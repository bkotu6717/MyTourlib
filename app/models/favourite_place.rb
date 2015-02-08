# FavouritePlace Model
class FavouritePlace < ActiveRecord::Base
  has_many :personal_galleries
end
