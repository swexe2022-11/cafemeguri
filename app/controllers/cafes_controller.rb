class CafesController < ApplicationController
  def index
    @cafes = Cafe.all
    
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
    
    #検索機能
    if params[:search] == nil || '' #「検索」フォームに何も入力されてなかったら全部表示
      @cafes= Cafe.all
      elsif params[:search] == '' #paramsに空文字はいっていたら全部表示
      @cafes= Cafe.all
      else
     #部分検索
      @cafes = Cafe.where("body LIKE ? ",'%' + params[:search] + '%') #キーワードの一部でも一致したら探しとってくる
    end

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
    cafe = Cafe.find(params[:id])
    cafe.destroy
    redirect_to cafe_path
  end

  def edit
  end
  
  def article_params
    params.require(:article).permit(:body, tag_ids: [])
  end
  
  
  
end
