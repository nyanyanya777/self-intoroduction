class OthersController < ApplicationController

  before_action :set_others, only: [:edit, :delete, :show, :edit]

  def index
    @other = Other.all
  end

  def new
    @other = Other.new
   end

  def create
    @other = Other.create(others_params)
  end

  def show
    set_others
  end

  def edit
    set_others
  end

  def delete
    set_others
    @other.delete
  end

  def update
    set_others
    @other.update
  end

  private
  def others_params
    params.require(:other).permit(:title, :content, :description)
  end

  def set_others
    @other = Other.find(params[:id])
  end
 end
