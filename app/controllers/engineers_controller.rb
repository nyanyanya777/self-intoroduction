class EngineersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_engineer, only: [:show, :update, :delete, :edit]

  def index
    @engineers = Engineer.all
  end

  def new
    @engineer = Engineer.new
  end

  def create
    @engineer = Engineer.new(engineers_params)

    if @engineer.save
      redirect_to engineers_path

    else
      render 'new'
    end
  end

  def show
    set_engineer
  end

  def edit
    set_engineer
  end

  def update
    set_engineer
    @engineer.update
  end

  def delete
    set_engineer
    @engineer.delete
  end

  private
  def engineers_params
    params.require(:engineer).permit(:title, :description, :content, :image, :site)
  end

  def set_engineer
    @engineer = Engineer.find(params[:id])
  end
end
