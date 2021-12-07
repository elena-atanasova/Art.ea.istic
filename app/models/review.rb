class Review < ApplicationRecord
# a review can belong to only one artwork
  belongs_to :artwork
  validates :review, :artwork, presence: true
end
