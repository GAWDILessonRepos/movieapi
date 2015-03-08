# DS
require 'rails_helper'

RSpec.describe 'Movie' do
  before(:all) do
    Movie.destroy_all
  end

  describe '.create' do
    it 'creates a new movie' do
      expect(Movie.new()).to be_a Movie
    end

    it 'is invalid without a title' do
      expect(Movie.create(
        gross: 2000000,
        release: Date.new(2013, 5, 12),
        rating: "R",
        description: "yabba dabba do"
        )).not_to be_valid
    end

    it 'is invalid if the title is not unique' do
      Movie.create(
        title: "BAZZZZZING",
        gross: 1111111,
        release: Date.new(2014, 12, 12),
        rating: "R",
        description: "yabba dabba do"
        );

      expect(Movie.create(
        title: "BAZZZZZING",
        gross: 2222222,
        release: Date.new(2014, 11, 11),
        rating: "PG-13",
        description: "er huh huh... OK, Fred!"
        )).not_to be_valid
    end

    it 'sets the gross to 0 as a default' do
      grossTest = Movie.create(
        title: "BAZZZZZING",
        release: Date.new(2014, 11, 11),
        rating: "PG-13",
        description: "er huh huh... OK, Fred!"
        )

      expect(grossTest.gross).to eq 0
    end

    it 'cannot have a negative gross' do
      expect(Movie.create(
        title: "BAZZZZZING",
        gross: -2000,
        release: Date.new(2014, 11, 11),
        rating: "PG-13",
        description: "er huh huh... OK, Fred!"
        )).not_to be_valid
    end

    it 'must have a release date' do
      expect(Movie.create(
        title: "BAZZZZZING",
        gross: 2000000,
        rating: "R",
        description: "yabba dabba do"
        )).not_to be_valid
    end

    it 'must have a release date in the past or within the next 5 years' do
      expect(Movie.create(
        title: "BAZZZZZING",
        gross: 2000000,
        release: Date.new(2005, 5, 12),
        rating: "R",
        description: "yabba dabba do"
        )).to be_valid
      expect(Movie.create(
        title: "BAZZZZZING",
        gross: 2000000,
        release: Date.new(2019, 5, 12),
        rating: "R",
        description: "yabba dabba do"
        )).not_to be_valid
    end

    it 'must have an MPAA rating' do
      expect(Movie.create(
        title: "BAZZZZZING",
        gross: 2000000,
        release: Date.new(2014, 5, 12),
        description: "yabba dabba do"
        )).not_to be_valid
    end

    it 'must have a valid MPAA rating' do
      expect(Movie.create(
        title: "BAZZZZZING",
        gross: 2000000,
        rating: "Z",
        release: Date.new(2014, 5, 12),
        description: "yabba dabba do"
        )).not_to be_valid
    end

    it 'must have a description' do
      expect(Movie.create(
        title: "BAZZZZZING",
        gross: 2000000,
        rating: "PG",
        release: Date.new(2014, 5, 12)
        )).not_to be_valid
    end

    it 'is valid if it meets all the requirements above' do
      expect(Movie.create(
        title: "BAZZZZZING",
        gross: 2000000,
        rating: "NC-17",
        release: Date.new(2014, 5, 12),
        description: "yabba dabba do"
        )).to be_valid
    end
  end
end
