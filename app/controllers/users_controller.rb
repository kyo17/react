class UsersController < ApplicationController
  def index
    if params[:search]
      @users = User.search(params[:search]).order(email: :asc)
    else
      @users = User.all.order(email: :asc)
    end
  end

  def profile
    @user = User.find(params[:id])
  end
end
