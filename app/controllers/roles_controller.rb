class RolesController < ApplicationController

  before_action :set_role, only: [:show, :edit, :update, :destroy]

  def index
    @roles = Role.page(params[:page])
  end

  def show
  end

  def new
    @role = Role.new
    @role.movie_id = params[:movie_id]
  end


  def create
    @role = Role.new
    @role.actor_id = params[:role][:actor_id]
    @role.movie_id = params[:role][:movie_id]
    @role.name = params[:role][:name]

    if @role.save
      redirect_to roles_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @role.actor_id = params[:role][:actor_id]
    @role.movie_id = params[:role][:movie_id]
    @role.name = params[:role][:name]

    if @role.save
      redirect_to roles_url
    else
      render 'new'
    end
  end

  def destroy
    @role.destroy
    redirect_to roles_url
  end

private

  def set_role
    @role = Role.find(params[:id])
  end
end
