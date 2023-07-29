class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_by_users, through: :likes, source: :user
  has_many :replies, class_name: "Tweet", foreign_key: 'parent_tweet_id', dependent: :destroy, inverse_of: :parent_tweet
  belongs_to :parent_tweet, class_name: "Tweet", optional: true 
end