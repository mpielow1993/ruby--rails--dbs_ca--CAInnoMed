class Consultation < ApplicationRecord
    belongs_to :appointment, optional: :true
    has_many :posts
    accepts_nested_attributes_for :posts
    
    validates :name, presence: true
end
