class Post < ApplicationRecord
  belongs_to :consultation
  
  has_one_attached :attachment
  
  validates :content, presence: true
end
