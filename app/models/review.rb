class Review < ApplicationRecord
  belongs_to :car
  validates :review, presence: true
end
