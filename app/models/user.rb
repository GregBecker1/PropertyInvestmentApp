class User < ActiveRecord::Base
  has_many :investment_properties
  validates :firstname, presence: true, length: { maximum: 25 }
  validates :lastname, presence: true, length: { maximum: 25 }
  validates :email, presence: true, length: { maximum: 255 }
  validates :phone, presence: true, length: { maximum: 12 }
  validates :password, presence: true, length: { minimum: 6 }
end
