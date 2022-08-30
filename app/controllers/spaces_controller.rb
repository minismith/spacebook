class SpacesController < ApplicationController
  before_action :set_space, only: %i[show edit update destroy]
  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
    @user = User.find(params[:user_id])
  end

  def show
    @user = @space.user
  end

  def edit
  end

  def destroy
    @user = @space.user
    @space.destroy

    redirect_to user_path(@user), status: :see_other
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
      redirect_to @user
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
