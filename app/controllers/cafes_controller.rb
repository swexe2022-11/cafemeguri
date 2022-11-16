class CafesController < ApplicationController
  def index
    @caves = Cafe.all
  end

  def new
    @cafe = Cafe.new
  end

  def create
    @cafe = Cafe.new(name: params[:cafe][:name],message: params[:cafe][:message])
    @cafe.save
    redirect_to'/'
  end

  def destroy
  end

  def edit
  end
end
