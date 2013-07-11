class MoviesController < ApplicationController
  def movies
    @movies = Movie.all
  end

  def movie
    @movie = Imdb::Movie.new(params[:id])
  end


  def save
    @movie = Imdb::Movie.new(params[:id])
    Movie << movie
    redirect_to '/movies'
  end

  def search
    @results = Imdb::Search.new(params[:title])
  end

  def new
  end

  def create
    movie = Imdb::Search.new(params[:title])
    movie.title = params[:title]
    movie.plot = params[:plot]
    movie.mpaa_rating = params[:mpaa_rating]
    movie.rating = params[:rating]
  end
end


