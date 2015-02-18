# Gallery Model
class Picture < ActiveRecord::Base
  belongs_to :tour
  belongs_to :imageable, polymorphic: true
end
