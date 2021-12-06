class Artwork < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates_presence_of :name, :artist, :year, :description
end
