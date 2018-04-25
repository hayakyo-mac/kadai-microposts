class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  def feed_microposts
    Micropost.where(user_id: self.micropost_ids + [self.id])
  end
end
