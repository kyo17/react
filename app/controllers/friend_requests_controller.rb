class FriendRequestsController < ApplicationController
  before_action :set_friend_request, except: [:index, :create]

  def index
    @incoming = FriendRequest.where(friend: current_user)
    @outgoing = current_user.friend_requests
  end

  def create
    friend = User.find(params[:friend_id])
    @friend_request = current_user.friend_requests.new(friend: friend)

    if @friend_request.save
      redirect_to friend_requests_path, notice: 'Petición de amistad enviada.'
    else
      redirect_to root_path, notice: 'Ocurrió un error, por favor intente de nuevo.'
    end
  end

  def update
    @friend_request.accept
    redirect_to profile_path(@friend_request.user_id), notice: 'Petición de amistad aceptada.'
  end

  def destroy
    @friend_request.destroy
    head :no_content
  end

  private
  def set_friend_request
    @friend_request = FriendRequest.find(params[:id])
  end
end
