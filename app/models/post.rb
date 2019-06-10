class Post < ApplicationRecord
  belongs_to :consultation
  
  validates :content, presence: true
end
