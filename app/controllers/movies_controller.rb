# DM
class MoviesController < ApplicationController
  before_filter :authenticate, only: [:create, :update]

  def index
    @movies = Movie.all
    render json: @movies, status: 200
  end

  def show
    @movie = Movie.find(params[:id])
    render json: @movie, status: 200
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      render json: @movie, status: :ok
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :gross, :release, :rating, :description)
  end
end
