# DS
require 'rails_helper'

RSpec.describe Review do
  before(:all) do
    Review.destroy_all
    Movie.destroy_all
  end

  describe '.create' do
    it 'creates a new review' do
      expect(Review.new()).to be_a Review
    end
  end
end
