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
	validates :release, presence: true

	
end
