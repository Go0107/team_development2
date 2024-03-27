class UsersController < ApplicationController
  # before_action :set_user, only: [:show]

  def show
    @user = User.find(params[:id])
    @posts = @user.reports
  end

  private

  # def set_user
  #   @user = User.find([:id])
  # end
end
