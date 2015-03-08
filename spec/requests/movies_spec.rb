require 'rails_helper'


RSpec.describe 'Movie requests' do
	before(:all) do
		Movie.destroy_all
		Movie.create!(title:'a', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
		Movie.create!(title:'b', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
		Movie.create!(title:'c', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
		Movie.create!(title:'d', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
		Movie.create!(title:'e', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
		Movie.create!(title:'f', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
		Movie.create!(title:'g', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
		Movie.create!(title:'h', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
		Movie.create!(title:'i', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
		Movie.create!(title:'j', gross: 3, release: Date.new(2013,4,3), rating: 'R', description: 'something')
		@movies = Movie.all
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
				release: Date.new(2013, 5, 12),
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
			get "/movies/#{@movie.id}"
			expect(response).to be_success
			movie = JSON.parse(response.body)
			expect(movie['id']).to eq @movie.id
		end
	end

	describe '#update' do
		it 'updates a new movie' do
			patch "/movies/#{@movie.id}",
			{ movie: {
				title: "THE GOLDEN MAN",
				gross: 2,
				release: Date.new(2013, 9, 13),
				rating: "R",
				description: "yabba dabba do"
				} }.to_json,
			{ 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
			expect(response).to be_success
			expect(response.content_type).to be Mime::JSON

			movie = JSON.parse(response.body)
			expect(movie["title"]).to eq "THE GOLDEN MAN"
		end
	end


end
