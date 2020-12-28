class ListsController < ApplicationController
  def add_list
    @lists = List.all
  end

  def add_book
    @lists = List.all
    @books = Book.all
    @list = List.find_by_id(list_params)
    @book = Book.find_by_id(book_params)
  end

  def add_book_in_list
    list = List.find_by_id(list_params)
    book = Book.find_by_id(book_params)
    list.books.append(book)
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
  def book_params
    params.permit(  :book_id  )
  end

  def list_params
    params.permit(  :list_id  )
  end
end
