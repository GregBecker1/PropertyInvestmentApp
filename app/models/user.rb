class User < ActiveRecord::Base
  has_many :investment_properties
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end
