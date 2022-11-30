class CafesController < ApplicationController
  def index
    @cafes = Cafe.all
  end

  def new
    @cafe = Cafe.new
  end

  def create
    @caves = Cafe.new(name: params[:cafe][:name],message: params[:cafe][:message])
    @caves.save
    redirect_to'/'
  end

  def destroy
  end

  def edit
  end
end
