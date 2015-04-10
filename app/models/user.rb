class User < ActiveRecord::Base
  has_many :investment_properties
  before_save { email.downcase! }  
  validates :firstname, presence: true, length: { maximum: 25 }
  validates :lastname, presence: true, length: { maximum: 25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :phone, presence: true, length: { maximum: 12 }
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
  validates :password, length: { minimum: 6 } 
end
