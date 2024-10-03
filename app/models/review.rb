class Review < ApplicationRecord
  belongs_to :car
  validates review: true
end
