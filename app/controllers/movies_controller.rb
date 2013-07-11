class MoviesController < ActionController
  def movies
    @movies = Movie.all
  end

  def movie
    @movie = Imdb::Movie.new(params[:id])
  end
  def new
  end

  def save
    @movie = Imdb::Movie.new(params[:id])
    Movie << movie
    redirect_to '/movies'
  end

  def search
    @results = Imdb::Search.new(params[:title])
  end


end

