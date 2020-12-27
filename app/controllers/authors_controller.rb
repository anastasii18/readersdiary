class AuthorsController < ApplicationController
  def add_author
    @authors = Author.all
  end

  def show
    @author = Author.find_by_id(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    author = Author.new book_params
    if author.save
      redirect_to "/authors/show/#{author.id}"
    else
      redirect_to '/authors/new'
    end
  end

  private
  def book_params
    params.require(:author).permit( :name)
  end
end