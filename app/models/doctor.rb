class Doctor < ApplicationRecord
    has_many :patients #e
    has_many :prescriptions #e
    has_many :appointments #e
end
