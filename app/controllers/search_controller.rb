class SearchController < ApplicationController
  before_action :authenticate_user!
  
  def search
    @word = params[:word]
    @model = params[:model]
    @method = params[:method]
    if @model == "User"
      @users = User.search_for(@word, @method)
    else
      @books = Book.search_for(@word, @method)
    end
  end
end
