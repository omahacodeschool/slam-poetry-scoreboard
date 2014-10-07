class SessionsController < ApplicationController
  def new
  end
  
  def create
    master = login(params[:email], params[:password])
      if master
        redirect_to root_path, :notice => "Logged in!"
      else
        render :new, :alert => "Email or password was invalid."
      end
    end
  
  def destroy
    logout
    redirect_to root_path, :notice => "Logged out!"
  end

end
