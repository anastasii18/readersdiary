class NewController < ApplicationController
  before_action :authenticate_user!

  def start
    @lists = List.all.preload(:books)
    @authors = Author.all
    @books = Book.all
    @list = List.find_by_id params[:id]
    @book = Book.find_by_id params[:id]
    @author = Author.find_by_id params[:id]
  end

  def add_book
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new book_params
    if book.save
      redirect_to books_path(book)
    else
      redirect_to 'new'
    end
  end

  private
  def book_params
    params.require(:book).permit(:author, :title, :rating, :comments, :start, :finish)
  end
end