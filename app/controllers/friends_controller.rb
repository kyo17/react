class FriendsController < ApplicationController
  before_action :set_friend, only: :destroy

  def index
    @friends = User.find(params[:id]).friends
  end

  def destroy
    current_user.remove_friend(current_user, @friend)
    redirect_to friends_path, notice: "Amigo eliminado correctamente"
  end

  private
  def set_friend
    @friend = current_user.friends.find(params[:id])
  end
end
