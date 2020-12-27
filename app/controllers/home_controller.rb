class HomeController < ApplicationController
  def index
    @books = Book.all
  end

  def books_in_the_list
    @lists = List.all.preload(:books)
    @list = List.find_by_id params[:id]
  end

  def authors_book
    @author = Author.find_by_id params[:id]
    @list = List.find_by_id params[:id]
    @books = Book.all
    @book = Book.find_by_id params[:id]
  end
  def about_book
    @author = Author.find_by_id params[:id]
    @list = List.find_by_id params[:id]
    @books = Book.all
    @book = Book.find_by_id params[:id]
  end
  before_action :require_login, :only => :secret
end
