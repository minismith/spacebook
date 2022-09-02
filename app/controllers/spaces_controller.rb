class SpacesController < ApplicationController
  before_action :set_space, only: %i[show edit update destroy]

  def index
    @spaces = Space.all
    @markers = @spaces.geocoded.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        info_window: render_to_string(partial: "info_window", locals: {space: space}),
        image_url: helpers.asset_url("https://res.cloudinary.com/dg6mudunt/image/upload/v1662040847/marker_widycg.png")
      }
    end
    if params[:query].present?
      @spaces = Space.search_by_name_and_address(params[:query])
    else
      @spaces = Space.all
    end
  end

  def new
    @space = Space.new
    @user = User.find(params[:user_id])
  end

  def show
    @user = @space.user
    @booking = Booking.new(user: @user, space: @space)
    @current_bookings = Booking.where(space_id: @space)
    @markers = [{
      lat: @space.latitude,
      lng: @space.longitude,
      info_window: render_to_string(partial: "info_window", locals: {space: @space}),
      image_url: helpers.asset_url("https://res.cloudinary.com/dg6mudunt/image/upload/v1662040847/marker_widycg.png")
    }]
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
