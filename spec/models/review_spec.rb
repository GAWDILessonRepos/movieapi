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
  end
end
