class Prescription < ApplicationRecord
  belongs_to :doctor, :class_name => 'User'
  belongs_to :patient, :class_name => 'User'
  belongs_to :order, optional: :true #e
  
  validates :drug, :quantity, presence: true
  
  DIAGNOSIS = [
    "Cold",
    "Flu",
    "STD"
  ]
  
  after_commit :send_to_patient, on: :create
  
  def send_to_patient
    PatientMailer.with(prescription: self).send_prescription.deliver_now
  end
end
