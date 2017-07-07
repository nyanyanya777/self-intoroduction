class EngineersController < ApplicationController

  before_action :set_other, only: [:show, :update, :delete, :edit]

  def index
    @engineers = Engineer.all
  end

  def new
    @engineer = Engineer.new
  end

  def create
    @engineer = Engineer.create(engineers_params)
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
    params.require(:engineer).permit(:title, :description, :content)
  end

  def set_engineer
    @engineer = Engineer.find(params[:id])
  end
end
