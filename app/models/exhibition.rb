class Exhibition < ApplicationRecord
# an exhibition can belong to only one artwork
  belongs_to :artwork
  validates :venue, :artwork, presence: true
end
