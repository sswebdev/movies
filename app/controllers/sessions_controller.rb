class SessionsController < ApplicationController

  def new

  end

  def destroy
    reset_session
    redirect_to root_url, notice: "See ya!"
  end

  def create
    user = User.find_by(email: params[:email])
    if user.present?
      if user.password == params[:password]
        # Yay!
        session[:user_id] = user.id
        redirect_to root_url, notice: "Hello, #{user.email}"
      else
        redirect_to root_url, notice: "Bad password."
      end
    else
      redirect_to root_url, notice: "Unknown username."
    end
  end
end




