class Order < ApplicationRecord
  belongs_to :patients
  has_many :prescriptions #e
end
