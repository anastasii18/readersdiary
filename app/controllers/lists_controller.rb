class ListsController < ApplicationController
  def add_list
    @lists = List.all
  end

  def add_book_in_list
    @lists = List.all.preload(:books)
    @books = Book.all
    @list = List.find_by_list_name params[:list_name]
    @book = Book.find_by_id params[:id]
  end

  def add_books
    @lists = List.all.preload(:books)
    @books = Book.all
    #list = List.find_by_id list_id_params
    book = Book.find_by_id params[:id]
    @list = List.find_by_id params[:id]
    @book = @list.books.create(book)
  end

  def show
    @list = List.find_by_id(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    list = List.new list_params
    if list.save
      redirect_to "/lists/show/#{list.id}"
    else
      redirect_to '/lists/new'
    end
  end

  private
  def list_params
    params.require(:list).permit( :list_name)
  end

  def list_id_params
    params.require(:list).permit( :list_id)
  end
end
