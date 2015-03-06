# DS
require 'rails_helper'

RSpec.describe Review do
  before(:all) do
    Review.destroy_all
    Movie.destroy_all
  end

  describe '.create' do
    it 'creates a new review' do
      expect(Review.new()).to be_a Review
    end

    it 'is invalid without a comment' do
      testMovie = Movie.create(
        title: "BAZZZZZING",
        gross: 2000000,
        rating: "NC-17",
        release: Date.new(2014, 5, 12),
        description: "yabba dabba do"
        )

      expect(testMovie.reviews.create(
        stars: 2,
        reviewer: 'hoss'
        )).not_to be_valid
    end

    it 'is invalid if the reviewer has already reviewed this movie (if reviewer is not unique to the movie)' do
      testMovie = Movie.create(
        title: "BAZZZZZING",
        gross: 2000000,
        rating: "NC-17",
        release: Date.new(2014, 5, 12),
        description: "yabba dabba do"
        )
      testMovie.reviews.create(
        comment: 'yay',
        stars: 5,
        reviewer: 'fake'
        )

      expect(testMovie.reviews.create(
        comment: 'boo',
        stars: 1,
        reviewer: 'fake'
        )).not_to be_valid
    end

    it 'is invalid if stars are included but are not in range [1,5]' do
      testMovie = Movie.create(
        title: "BAZZZZZING",
        gross: 2000000,
        rating: "NC-17",
        release: Date.new(2014, 5, 12),
        description: "yabba dabba do"
        )

      expect(testMovie.reviews.create(
        comment: 'boo',
        stars: 0,
        reviewer: 'hiss'
        )).not_to be_valid
      expect(testMovie.reviews.create(
        comment: 'yay',
        stars: 6,
        reviewer: 'encore'
        )).not_to be_valid
    end
  end
end
