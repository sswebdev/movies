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
    @director = Director.new
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
