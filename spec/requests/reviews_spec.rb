# DM
require 'rails_helper'

describe 'Comments Requests' do
  before(:all) do
    Review.delete_all
    Movie.delete_all
    @movies = FactoryGirl.create_list(:movie, 25)
    Movie.first.reviews << FactoryGirl.create_list(:review, 4)
    Movie.last.reviews << FactoryGirl.create_list(:review, 4)
    @movieL = Movie.last
    @movieF = Movie.first
  end
  describe "#index" do
    it 'gets all of the comments for a post' do
      get "/posts/#{@post.id}/comments"
      expect(response).to be_success
      json = JSON.parse(response.body)
    end
  end
  describe '#create' do
    it 'should create a comment on that post and return the comment' do
      post "/posts/#{@posts.first.id}/comments",
      { comment: {
          body: "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui.",
          author: "JSONWharff"
        } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
    end
  end

end
