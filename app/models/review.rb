# DS

# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  comment    :string
#  stars      :integer
#  reviewer   :string
#  movie_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

# DS
class Review < ActiveRecord::Base
  belongs_to :movie

  validates :comment, presence: true
  validates_uniqueness_of :reviewer, scope: :movie_id
end
