# DM
require 'rails_helper'

describe 'Reviews Requests' do
  before(:all) do
    Review.delete_all

    Movie.destroy_all
    Movie.create!(title:'aa', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
    Movie.create!(title:'bb', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
    Movie.create!(title:'cc', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
    Movie.create!(title:'dd', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
    Movie.create!(title:'ee', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
    Movie.create!(title:'ff', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
    Movie.create!(title:'gg', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
    Movie.create!(title:'hh', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
    Movie.create!(title:'ii', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
    Movie.create!(title:'jj', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')





    Movie.first.reviews << Review.create(comment: 'asdas', stars: 3, reviewer: '1')
    Movie.first.reviews << Review.create(comment: 'asdas', stars: 3, reviewer: '2')
    Movie.first.reviews << Review.create(comment: 'asdas', stars: 3, reviewer: '3')
    Movie.first.reviews << Review.create(comment: 'asdas', stars: 3, reviewer: '4')
    Movie.last.reviews << Review.create(comment: 'asdas', stars: 3, reviewer: '5')
    Movie.last.reviews << Review.create(comment: 'asdas', stars: 3, reviewer: '6')
    Movie.last.reviews << Review.create(comment: 'asdas', stars: 3, reviewer: '7')
    Movie.last.reviews << Review.create(comment: 'asdas', stars: 3, reviewer: '8')
    @movieL = Movie.last
    @movieF = Movie.first
  end
  describe "#index" do
    it 'gets all of the reviews for a movie' do
      get "/movies/#{@movieF.id}/reviews"
      expect(response).to be_success
      json = JSON.parse(response.body)
    end
  end
  describe '#create' do
    it 'should create a review on that movie and return the movie' do
      post "/movies/#{@movieF.id}/reviews",
      { review: {
          comment: "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui.",
          stars: 4,
          reviewer: "JSONWharff"
        } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
    end
  end

end
