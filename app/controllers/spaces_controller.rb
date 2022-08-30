class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
    @user = User.find(params[:user_id])
  end

  def show
    @space = Space.find(params[:id])
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

  def space_params
    params.require(:space).permit(:name, :address, :price_per_day, :description, photos: [])
  end
end
