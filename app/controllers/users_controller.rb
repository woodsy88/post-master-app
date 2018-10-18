class UsersController < ApplicationController
  before_action :set_user, only: [:follow]
  def index
    @users = User.all
  end

  def follow
    # current_user is the user logged in
            # @user is the user you are trying to follow
    current_user.events.create(action: "followed", eventable: @user)
    redirect_to users_path
  end                                                                              

  private

  def set_user
    @user = User.find(params[:id])
  end

end