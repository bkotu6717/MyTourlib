# User model
class User < ActiveRecord::Base
  has_one :user_information
  has_many :friends
  accepts_nested_attributes_for :user_information
end
