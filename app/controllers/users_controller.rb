class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @spaces = Space.where(params[:id] == @user.id)
  end
end
