class Artwork < ApplicationRecord
  validates_presence_of :name, :artist, :year, :description
end
