# User model
class User < ActiveRecord::Base
  has_one :user_information
  has_many :friends
end
