# DS
require 'rails_helper'

RSpec.describe 'Movie model' do
  before(:all) do
    Movie.destroy_all
    @movies = FactoryGirl.create_list(:movie, 10)
    @movie = @movies.first
  end

  describe '.create' do
    it 'creates a new movie' do
      expect(Movie.create()).to be_a Movie
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
        release: Date.new(2015, 12, 12),
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
