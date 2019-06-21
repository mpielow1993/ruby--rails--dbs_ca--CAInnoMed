class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :appointments, :foreign_key => 'patient_id'
  has_many :prescriptions, :foreign_key => 'patient_id'
  
  def full_name
    "#{"Dr." if is_doctor?} #{first_name} #{surname}"
  end
end
