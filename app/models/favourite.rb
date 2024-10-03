class Favourite < ApplicationRecord
  belongs_to :car
  validates :favourite, presence: true
end
