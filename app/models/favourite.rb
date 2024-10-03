class Favourite < ApplicationRecord
  belongs_to :car
  validates favourite: true
end
