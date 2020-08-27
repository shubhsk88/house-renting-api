class Favourite < ApplicationRecord
  belongs_to :house
  belongs_to :user
  validates_uniqueness_of :house
end
