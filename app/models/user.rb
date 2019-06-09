class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :doctors_appointments, :class_name => 'Appointment', :foreign_key => 'doctor_id'
  has_many :patients_appointments, :class_name => 'Appointment', :foreign_key => 'patient_id'
  
  def full_name
    "#{first_name} #{surname}"
  end
end
