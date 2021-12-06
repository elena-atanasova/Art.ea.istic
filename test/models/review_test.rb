require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  setup do
      @artwork = artworks(:one)
  end

  test 'should not save empty review' do
    my_review = Review.new
    my_review.save

    refute my_review.valid?
  end

  test 'should save empty review' do
    my_review = Review.new
    my_review.review = 'My honest review'
    my_review.artwork = @artwork

    my_review.save
    assert my_review.valid?
  end

end
