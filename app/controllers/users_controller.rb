class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @spaces = @user.spaces
    @user_bookings = @user.bookings
  end
end
