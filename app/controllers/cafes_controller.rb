class CafesController < ApplicationController
  def index
    @cafes = Cafe.order(created_at: :desc)#投稿順表示

    
    if params[:tag_ids]
      @cafes = []
      params[:tag_ids].each do |key, value|      
        @cafes += Tag.find_by(tag_name: key).cafes if value == "1"
      end
      @cafes.uniq!
    end
    
    if params[:tag]
      Tag.create(tag_name: params[:tag])
    end


  end

  def new
    @cafe = Cafe.new
  end

  def create
    @cafe = Cafe.new(name: params[:cafe][:name],message: params[:cafe][:message],image: params[:cafe][:image].read)
    if @cafe.save
      redirect_to root_path
    else
    redirect_to 'new'
    end
  end
  
  
  def get_image
    cafe = Cafe.find(params[:id])
    send_data cafe.image, disposition: :inline, type:'image/png'
  end

  def edit
   @cafe = Cafe.find(params[:id])
  end
  
  def destroy
    @cafe = Cafe.find(params[:id])
    @cafe.destroy
    redirect_to request.referer
  end
  
  def update
    @cafe = Cafe.find(params[:id])
    if @cafe.update(name: params[:cafe][:name],message: params[:cafe][:message],image: params[:cafe][:image].read)
       @cafe.save
       redirect_to'/'
    else
      render :new
    end
  end
  
  def show
    @cafe = Cafe.all
  end
  
  private
  
  def article_params
    params.require(:article).permit(:body, tag_ids: [])
  end
  
end