class TopController < ApplicationController
  def main
    render 'login'
  end

  def login
    user = User.find_by(uid: params[:uid])
    if user and BCrypt::Password.new(user.pass) == params[:pass]
      session[:login_uid] = user.uid
      redirect_to root_path
    else
      render 'login'
    end
  end

  def logout
    session.delete(:login_uid)
    redirect_to root_path
  end
  
  def top
    @cafe = Cafe.all
  end
  
  def destroy
    cafe = Cafe.find(params[:id])
    cafe.destroy
    redirect_to cafe_path
  end
  
  def cafe_params
      params.require(:cafe).permit(:lat,:lng)
  end
  
end