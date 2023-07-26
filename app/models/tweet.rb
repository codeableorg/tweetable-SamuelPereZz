class Tweet < ApplicationRecord
  has_many :replies, class_name: "Tweet", foreign_key: 'parent_tweet_id'
  belongs_to :parent_tweet, class_name: "Tweet", optional: true

  validates :body, presence: true, length: { maximum: 140 }
  validates :replies_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
end
