class FavorelationsController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favo(micropast)
    flash[:success] = 'お気に入りに登録しました。'
    #redirect_to 
  end

  def destroy
    micropast = Micropost.find(params[:micropast_id])
    current_user.unfavo(micropast)
    flash[:success] = 'お気に入りを解除しました。'
    #redirect_to
  end
end
