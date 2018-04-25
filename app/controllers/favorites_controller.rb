class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:likes_id])
    current_user.likes(micropost)
    flash[:success] = 'Likes Listに追加しました。'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    micropost = Micropost.find(params[:likes_id])
    current_user.remove_likes(micropost)
    flash[:success] = 'Likes Listから削除しました。'
    redirect_back(fallback_location: root_path)
  end
end
