# Review Model
class Review < ActiveRecord::Base
  belongs_to :favourate_place
  belongs_to :tour
end
