class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @spaces = Space.where(params[:id] == :user_id)
  end
end
