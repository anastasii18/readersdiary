class HomeController < ApplicationController
  def index
    @lists = List.all
  end

  def create_list
    @list = List.find_by_id params[:id]
  end
end
