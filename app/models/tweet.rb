class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_by_users, through: :likes, source: :user
  has_many :replies, class_name: "Tweet", foreign_key: 'parent_tweet_id', dependent: :destroy
  belongs_to :parent_tweet, class_name: "Tweet", optional: true

  validates :body, presence: true, length: { maximum: 140 }
  validates :replies_count, default: 0
  validates :likes_count, default: 0
  
end
