# DS
require 'rails_helper'

RSpec.describe Movie do
  describe '.create' do
    it 'creates a new movie' do
      expect(Movie.create()).to be_a Movie
    end

    it 'is invalid without a title' do
      expect(Movie.create(
        gross: 2000000,
        release: Date.new(1993, 5, 12),
        rating: "R",
        description: "yabba dabba do"
        )).not_to be_valid
    end

    # it 'is invalid without a release date' do
    #   expect(Movie.create()).not_to be_valid
    # end

    # it 'is invalid without a description' do
    #   expect(Movie.create()).not_to be_valid
    # end

    # it 'is valid with all the requirements' do
    #   expect(Movie.create()).to be_valid
    # end
  end
end
