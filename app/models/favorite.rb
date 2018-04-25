class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :likes, class_name: 'Micropost'
  
  validates :user_id, presence: true
  validates :likes_id, presence: true
end
