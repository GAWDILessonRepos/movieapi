require 'rails-helper'

describe 'Movie requests' do
	before(:all) do
		Movie.destroy_all
		@movies = FactoryGirl.create_list(:movie, 10)
		@movie = @movies.first
	end

	describe '#index' do
		it 'gets all of the movies' do
			get '/movies'
			expect(response).to be_success
			json = JSON.parse(response.body)
			expect(json.length).to eq 10
		end
	end

	describe '#create' do
		it 'creates a new movie' do
			post '/movies',
			{ movie: {
				title: "BAZZZZZING",
				gross: 2000000,
				release: Date.new(1993, 5, 12),
				rating: "R",
				description: "yabba dabba do"
				} }.to_json, 
			{ 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
			expect(response).to be_success
			expect(response.content_type).to be Mime::JSON

			movie = JSON.parse(response.body)
			expect(movie["title"]).to eq "BAZZZZZING"
		end
	end

	describe '#show' do
		it 'shows a single movie' do
			get "/posts/#{@post.id}"
			expect(response).to be_success
			post = JSON.parse(response.body)
			expect(post['id']).to eq @post.id
		end
	end





end