class ListsController < ApplicationController
  #index displaying all the lists
  def index
    @lists = List.all
  end

  # the page showing one list by id
  def show
    @list = List.find(params[:id])
  end

  def new
  end

  def create
  end
end
