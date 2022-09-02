class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @space = Space.find(params[:space_id])
    @user = current_user
    @booking.space = @space
    @booking.user = @user

    if @booking.save
      redirect_to space_path(@space)
    else
      render 'spaces/show', status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @booking = Booking.find_by(space_id: booking.space.id)
    @booking.destroy

    redirect_to user_path(@user), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:message, :booking_start, :booking_end)
  end
end
