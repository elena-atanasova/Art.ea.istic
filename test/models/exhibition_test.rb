require 'test_helper'

class ExhibitionTest < ActiveSupport::TestCase

  setup do
      @artwork = artworks(:one)
  end

  test 'should not save empty exhibition' do
    my_exhibition = Exhibition.new
    my_exhibition.save

    refute my_exhibition.valid?
  end

  test 'should save empty exhibition' do
    my_exhibition = Exhibition.new
    my_exhibition.venue = 'A place for exhibition'
    my_exhibition.artwork = @artwork

    my_exhibition.save
    assert my_exhibition.valid?
  end

end
