class Patient < ApplicationRecord
    
    belongs_to :user, optional: :true
    has_many :doctors #e
    has_many :prescriptions #e
    has_many :appointments #e
    has_many :orders #e
end
