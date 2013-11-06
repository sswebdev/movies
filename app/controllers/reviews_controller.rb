class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find_by(:id => params[:id])
  end

  def new
    @movie = Movie.find(params[:movie_id])
  end

  def create
    @review = Review.new
    @review.title = params[:title]
    @review.body = params[:body]
    @review.rating = params[:rating]
    @review.movie_id = params[:movie_id]

    if @review.save
      redirect_to reviews_url
    else
      render 'new'
    end
  end

  def edit
    @review = Review.find_by(:id => params[:id])
  end

  def update
    @review = Review.find_by(:id => params[:id])
    @review.title = params[:title]
    @review.body = params[:body]
    @review.rating = params[:rating]

    if @review.save
      redirect_to reviews_url
    else
      render 'new'
    end
  end

  def destroy
    @review = Review.find_by(:id => params[:id])
    @review.destroy
    redirect_to reviews_url
  end
end
