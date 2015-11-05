class MoviesController < ApplicationController

  def home
    load_movies
  end

  def index
    load_movies

  #@countries.sort!{ |a,b| a.name.downcase <=> b.name.downcase }
  #@country = Country.find(params[:id])
end

def show
  load_movie
  @reviews = Review.all
  @review = Review.find(params[:id])
end

def new
  @movie = Movie.new
  load_movies
end

def create
  Movie.create(movie_params)   #see the team_params from the private method below
  redirect_to(movies_path)
end

def destroy
  load_movie  #doesn't need @ since it is not exposed - only being deleted
  @movie.destroy
  redirect_to(movies_path)
end

def edit
  load_movie

end

def update
  load_movie #again - the data does not need to be exposed - no @
  @movie.update(movie_params) #from the private method below - whitelist check
  redirect_to(movies_path)
end  

private

def load_movie
  @movie = Movie.find(params[:id])
end

def load_movies
  @movies = Movie.all
end

def movie_params
  # allows these params to be accessed by the methods above
  params.require(:movie).permit(:title, :director, :writer, :studio, :genre, :year, :runtime, :rating, :tagline, :certificate, :imdb_link, :link_to_buy, :link_to_trailer, :poster_url, :fanart1_url, :fanart2_url, :background_url, :imdb_rating)
end

end