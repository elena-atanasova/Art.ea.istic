class Exhibition < ApplicationRecord
  belongs_to :artwork
  validates :venue, :artwork, presence: true
end
