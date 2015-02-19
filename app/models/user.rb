# User model
class User < ActiveRecord::Base
  has_one :user_information
  has_many :friends, foreign_key: "sender_id"
  accepts_nested_attributes_for :user_information
  enum request_status: [ :awaiting , :accept, :reject ]
end
