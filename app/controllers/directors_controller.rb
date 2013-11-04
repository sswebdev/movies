class DirectorsController < ApplicationController

  def index
    @directors = Director.order('name')
  end

  def show
    @director = Director.find_by(:id => params[:id])
  end

  def new
    @director = Director.new
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

  def edit
    @director = Director.find_by(:id => params[:id])
  end

  def update
    @director = Director.find_by(:id => params[:id])
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
    @director = Director.find_by(:id => params[:id])
    @director.destroy
    redirect_to directors_url
  end
end
