class UsersController < ApplicationController
  def index
    @users = User.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save(book_params)
    redirect_to books_path
  end

  def show
    @user = User.find(params[:id])
    @book = @user.books
    @new_book = Book.new
  end

  def edit
  end
end
