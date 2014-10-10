class MastersController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create]
  
  def new
    @master = Master.new
  end
  
  def create
    @master = Master.new(params[:master])
    if @master.save
      redirect_to root_path, :notice => "You're in!"
    else
      render :new
    end
  end
end
