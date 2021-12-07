class Artwork < ApplicationRecord
# one-to-many relationship : one artwork can have many reviews and many exhibitions
  has_many :reviews, dependent: :destroy
  has_many :exhibitions, dependent: :destroy
  validates_presence_of :name, :artist, :year, :description
end
