class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
    else
      redirect_to root_path
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    else
      session[:name] = nil
    end
  end

end
