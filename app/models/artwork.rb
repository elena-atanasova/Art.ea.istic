class Artwork < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :exhibitions, dependent: :destroy
  validates_presence_of :name, :artist, :year, :description
end
