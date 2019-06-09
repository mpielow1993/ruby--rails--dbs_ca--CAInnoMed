class Prescription < ApplicationRecord
  belongs_to :doctor, :class_name => 'User'
  belongs_to :patient, :class_name => 'User'
  belongs_to :order, optional: :true #e
  
  validates :drug, :quantity, presence: true
end
