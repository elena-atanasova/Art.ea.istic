class HomeController < ApplicationController
  def home
  end

  def webform
    @artwork = Artwork.new
  end

end
