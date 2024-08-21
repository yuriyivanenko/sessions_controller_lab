class SessionsController < ApplicationController
  def new
  end
  
  def create
    session[:name] = params[:name] unless params[:name].blank?

    if session[:name].blank?
      redirect_to "/login"
    else
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
  end
end
