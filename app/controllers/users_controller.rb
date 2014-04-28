class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 2)
  end

end
