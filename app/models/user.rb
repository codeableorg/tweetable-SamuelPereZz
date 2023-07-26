class User < ApplicationRecord
  has_secure_password
  has_one_attached :avatar, default_url: "app/assets/images/default-avatar.png"
  before_validation :default_avatar

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, presence: true, uniqueness: true 
  validates :name, presence: true
  validates :password, length: { minimum: 6 }
  validates :role, inclusion: { in: [:member, :admin] }
  
  private

  def default_avatar
    self.avatar ||= "app/assets/images/default-avatar.png"
  end
end
