class Consultation < ApplicationRecord
    belongs_to :appointment, optional: :true
    has_many :posts
    accepts_nested_attributes_for :posts
    
    has_one_attached :image
    
    validates :name, presence: true
end
