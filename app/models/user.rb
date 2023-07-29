class User < ApplicationRecord
  before_create :default_avatar
  has_one_attached :avatar
  has_secure_password
  

  has_many :tweets, dependent: :destroy
  has_many :likes, dependent: :destroy, counter_cache: true
  has_many :liked_tweets, through: :likes, source: :tweet
  has_many :replies, class_name: 'Tweet', foreign_key: :reply_to_id, dependent: :nullify
  

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, presence: true, uniqueness: true 
  validates :name, presence: true
  validates :password, presence: true, length: { minimum: 6 }, if: :password_required?
  enum role: { member: 0, admin: 1 }
  
  private

  def default_avatar
    self.avatar.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'default-avatar.png')), filename: 'default-avatar.png', content_type: 'image/png') unless self.avatar.attached?
  end

  def password_required?
    new_record? || password.present?
  end
end