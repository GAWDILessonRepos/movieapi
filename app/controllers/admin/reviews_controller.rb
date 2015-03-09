# DS
class Admin::ReviewsController < ApplicationController
	def update
		@review = Review.find(params[:id])
		if @review.update(review_params)
			head :no_content
		else
			render json: @review.errors, status: :unprocessable_entity
		end
	end

	def destroy
		@review = Review.find(params[:id])
		@review.destroy
	end

	private

		def review_params
			params.require(:review).permit(:comment, :stars, :reviewer)
		end
end
