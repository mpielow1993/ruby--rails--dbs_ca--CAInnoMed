class Appointment < ApplicationRecord
  belongs_to :doctor, :class_name => 'User'
  belongs_to :patient, :class_name => 'User'
  
  has_one :consultation
  
  scope :unpaid, -> { where(paid: false) }
  
  # validates :doctor_id, :patient_id, :time, :paid, :fee_amount, presence: true
  
  validate :doctor_isnt_own_patient
  validate :not_in_the_past
  validate :in_office_hours
  validate :doctor_isnt_busy

  before_validation :update_fee_amount_to_cents

  DEFAULT_FEE = 65.00

  def update_fee_amount_to_cents
    return unless self.fee_amount
    self.fee_amount = self.fee_amount * 100
  end

  def next_available_slot
    # Get next slot for a specific doctor
    # to use as default value for time field on Appointment form
  end
  
  def doctor_isnt_own_patient
    if doctor_id == patient_id
      errors.add(:base, "You can't look after yourself!")
    end
  end
  
  def not_in_the_past
    return unless time_changed?
    if time < DateTime.now
      errors.add(:time, "can't be in the past.")
    end
  end

  def in_office_hours
    return unless time_changed?
    if time.hour < 9 || time.hour >= 17
      errors.add(:time, "is outside of office hours.")
    end
  end
  
  def doctor_isnt_busy
    if has_appointment_at_this_time?
      errors.add(:doctor, "already has an appointment for this time")
    end
  end
  
  def has_appointment_at_this_time?
    Appointment.where(doctor: doctor, time: time).where.not(id: id).exists?
  end

end
