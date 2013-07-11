class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def movie
    @movie = Imdb::Movie.new(params[:id])
  end

  def show

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
    imdb_movie = Imdb::Movie.new(params[:movie_id])
    db_movie = Movie.new()
    db_movie.title = imdb_movie.title
    db_movie.year = imdb_movie.year
    db_movie.plot = imdb_movie.plot
    db_movie.mpaa_rating = imdb_movie.mpaa_rating
    db_movie.rating = 50
    db_movie.save
    redirect_to '/movies'
  end
end


