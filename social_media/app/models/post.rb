class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :post_message, presence: true
 
end
