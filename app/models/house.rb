class House < ApplicationRecord
    has_many :favourites,dependent: :destroy

    validates_presence_of :title,:description,:price
end
