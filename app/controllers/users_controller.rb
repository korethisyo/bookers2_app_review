class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(book_params[:id])
  end

  def edit
  end
end
