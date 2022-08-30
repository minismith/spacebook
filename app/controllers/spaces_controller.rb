class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :destroy]
  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
    @user = User.find(params[:user_id])
  end

  def show
  end

  def edit
  end

  def destroy
    raise
    @user = User.where(id: params[:id])
  end

  def update
    @space.update(space_params)
    redirect_to space_path(@space)
  end

  def create
    @space = Space.new(space_params)
    @user = User.find(params[:user_id])
    @space.user = @user

    if @space.save
      redirect_to @user, notice: 'Listing was successfully created.'
    else
      render :new, status: :unprocessableentity
    end
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :address, :price_per_day, :description, photos: [])
  end
end
