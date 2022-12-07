class CafesController < ApplicationController
  def index
    @cafes = Cafe.all
  end

  def new
    @cafe = Cafe.new
  end

  def create
    @cafe = Cafe.new(name: params[:cafe][:name],message: params[:cafe][:message],image: params[:cafe][:image].read)
    @cafe.save
    redirect_to'/'
  end
  
  def get_image
    image = Cafe.find(params[:id])
    send_data image.file, disposition: :inline, type:'image/png'
  end

  def destroy
  end

  def edit
  end
end
