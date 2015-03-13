class User < ActiveRecord::Base
  has_many :investment_properties
end
