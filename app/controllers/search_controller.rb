class SearchController < ApplicationController
  before_action :authenticate_user!
  
  def search
    @word = params[:word]
    @model = params[:model]
    @method = params[:method]
    if @model == "User"
      @users = User.where(@word, @method)
    else
      @books = Book.where(@word, @method)
    end
  end
end
