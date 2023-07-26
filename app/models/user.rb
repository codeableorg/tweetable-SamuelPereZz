class User < ApplicationRecord
  has_secure_password
  before_validation :default_avatar
  has_one_attached :avatar

  has_many :tweets, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_tweets, through: :likes, source: :tweet
  has_many :replies, class_name: 'Tweet', foreign_key: :reply_to_id, dependent: :nullify
  

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, presence: true, uniqueness: true 
  validates :name, presence: true
  validates :password, length: { minimum: 6 }
  enum role: { member: 0, admin: 1 }
  
  private

  def default_avatar
    self.avatar ||= "app/assets/images/default-avatar.png"
  end
end
