class DirectorsController < ApplicationController

  before_action :find_director, except: [:new, :index, :create]

  def find_director
    @director = Director.find_by(:id => params[:id])
  end

  def index
    @directors = Director.order('name')
  end

  def show
  end

  def new
    @director = Director.new
  end

  def edit
  end

  def create
    # {"utf8"=>"✓", "authenticity_token"=>"9kcSoSSo8zCNwjFiRGWF2Q8neqxh3y7FitSDaIQwBW0=", "director"=>{"name"=>"Raghu", "bio"=>"Dude who's always right, dang it!", "image_url"=>"", "dob"=>""}, "commit"=>"Create Director"}
    @director = Director.new(params["director"])

    # @director.name = params["director"]["name"]
    # @director.bio = params["director"]["bio"]
    # @director.image_url = params[:director][:image_url]
    # @director.dob = params["director"][:dob]

    if @director.save
      redirect_to directors_url
    else
      render 'new'
    end
  end



  def update
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]
    @director.dob = params[:dob]

    if @director.save
      redirect_to directors_url
    else
      render 'new'
    end
  end

  def destroy
    @director.destroy
    redirect_to directors_url
  end
end
