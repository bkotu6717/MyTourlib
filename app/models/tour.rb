# Tour Model
class Tour < ActiveRecord::Base
  has_many :pictures, as: :imageable
end
