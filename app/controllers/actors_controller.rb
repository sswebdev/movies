class ActorsController < ApplicationController

  # /actors
  # /movies/199/actors
  def index
    if params[:movie_id].present?
      @actors = Movie.find(params[:movieid]).actors.page(params[:page]).per(5)
    else
      @actors = Actor.order('name').page(params[:page]).per(5)
    end
  end

  def show
    @actor = Actor.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @actor = Actor.new
    @actor.name = params[:name]
    @actor.image_url = params[:image_url]
    @actor.dob = params[:dob]
    @actor.bio = params[:bio]

    if @actor.save
      redirect_to actors_url
    else
      render 'new'
    end
  end

  def edit
    @actor = Actor.find_by(:id => params[:id])
  end

  def update
    @actor = Actor.find_by(:id => params[:id])
    @actor.name = params[:name]
    @actor.image_url = params[:image_url]
    @actor.dob = params[:dob]
    @actor.bio = params[:bio]

    if @actor.save
      redirect_to actors_url
    else
      render 'new'
    end
  end

  def destroy
    @actor = Actor.find_by(:id => params[:id])
    @actor.destroy
    redirect_to actors_url
  end
end
