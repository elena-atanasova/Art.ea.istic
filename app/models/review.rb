class Review < ApplicationRecord
  belongs_to :artwork
  validates :review, :artwork, presence: true
end
