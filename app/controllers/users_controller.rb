class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def index
    if params[:search]
        @search = User.search do
            fulltext params[:search]
        end
        @users = @search.results
    else
        @users = User.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 2)
    end
  end
end
