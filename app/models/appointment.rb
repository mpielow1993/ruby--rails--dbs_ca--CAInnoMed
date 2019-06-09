class Appointment < ApplicationRecord
  belongs_to :doctor, :class_name => 'User'
  belongs_to :patient, :class_name => 'User'
  
  scope :unpaid, -> { where(paid: false) }
  
  validate :doctor_isnt_own_patient
  
  def doctor_isnt_own_patient
    if doctor_id == patient_id
      errors.add(:base, "You can't look after yourself!")
      throw(:abort)
    end
  end
  
  def save_and_charge(stripe_token)
    update!(paid: true) && Stripe::Charge.create(
      amount: 30000,
      currency: 'EUR',
      source: stripe_token,
      description: "Rip off appointment prices"
    )
  end
end
