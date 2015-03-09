class ReviewsController < ApplicationController
	def index
		@reviews = Movie.find(params[:movie_id]).reviews
		render json: @reviews, status: 200
	end

	def create
		@review = Movie.find(params[:movie_id]).reviews.new(review_params)
		if @review.save
			render json: @review, status: 201
		else
			render json: @review.errors, status: :unprocessable_entity
		end
	end

	private

	def review_params
		params.require(:review).permit(:comment, :stars, :reviewer)
	end


end
