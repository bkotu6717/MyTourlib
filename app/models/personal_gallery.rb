# PersonalGallery Model
class PersonalGallery < ActiveRecord::Base
  belongs_to :favourite_place
  has_many :pictures, as: :imageable
end
