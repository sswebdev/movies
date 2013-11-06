class MoviesController < ApplicationController

  def index
    @movies = Movie.order(:title).limit(100)
  end

  def show
    @movie = Movie.find_by(:id => params[:id])
  end

  def new
  end

  def create
    #  Parameters: {"utf8"=>"✓", "authenticity_token"=>"FwzZexhwZZoiO4GO23kdGnWTcsozBwWtRbHqUpQctpo=", "title"=>"Apollo 13", "year"=>"2005", "director_id"=>"3", "commit"=>"Create Movie"}
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]

    @movie.director_id = params[:director_id]

    if @movie.save
      redirect_to movies_url
    else
      render 'new'
    end
  end

  def edit
    @movie = Movie.find_by(:id => params[:id])
  end

  def update
    @movie = Movie.find_by(:id => params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]

    if @movie.save
      redirect_to movies_url
    else
      render 'new'
    end
  end

  def destroy
    @movie = Movie.find_by(:id => params[:id])
    @movie.destroy
    redirect_to movies_url
  end
end
