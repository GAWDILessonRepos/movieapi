# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  title       :string
#  gross       :integer
#  release     :date
#  rating      :string
#  description :string
#  created_at  :datetime
#  updated_at  :datetime
#

class Movie < ActiveRecord::Base
	has_many :reviews, dependent: :destroy

	validates :title, presence: true, uniqueness: true
	validates :gross, numericality: {greater_than: -1}
	validates :release, presence: true
	validates :rating, presence: true
	validates_inclusion_of :rating, in: %w(G g PG pg PG-13 pg-13 R r NC-17 nc-17)
	validates :description, presence: true
	validate :movie_cant_be_in_the_future

	# def movie_cant_be_older_than_5_years
	# 	if release && release < Date.today - 1825
	# 		errors.add(:release, "Movie can't be older than 5 years")
	# 	end
	# end

	def movie_cant_be_in_the_future
		if release && release > Date.today + 1825
			errors.add(:release, "Movie can't be from the future")
		end
	end

	# def valid_MPAA_rating
	# 	valid_ratings = ['G','g','PG','pg','PG-13','pg-13','R','r','NC-17','nc-17']
	# 	if valid_ratings.include?{|r| r == rating }
	# 		errors.add(:rating, "Must be a valid MPAA rating")
	# 	end
	# end
end
