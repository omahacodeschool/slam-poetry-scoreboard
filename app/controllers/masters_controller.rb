class MastersController < ApplicationController
  def new
    @master = Master.new
  end
  
  def create
    @master = Master.new(params[:master])
    if @master.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render :new
    end
  end
end
