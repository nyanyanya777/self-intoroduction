class EditersController < ApplicationController

  before_action :set_editer, only: [:show, :delete, :update, :edit]

  def index
    @editers = Editer.all
  end

  def new
    @editer = Editer.new
  end

  def create
    @editer = Editer.new(editer_params)

    if @editer.save
      redirect_to editers_path
    else
      render 'new'
  end
end

  def show
    set_editer
  end

  def edit
    set_others
  end

  def update
    set_editer
    @editer.update(editer_params)
  end

  def delete
    set_editer
    @editer.destroy
  end

  private
  def set_editer
    @editer = Editer.find(params[:id])
  end

  def editer_params
    params.require(:editer).permit(:title, :content, :description, :image, :site)
  end
end
