class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @user = User.find(:user_id)
    @space.user = @user

    if @space.save
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessableentity
    end
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :price_per_day, :description)
  end
end
