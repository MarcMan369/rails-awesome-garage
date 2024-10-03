class Favourite < ApplicationRecord
  belongs_to :car
  validates :Favourite, presence: true
end
