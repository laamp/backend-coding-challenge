class Api::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @user = User.new(user_params)

    if @user.save!
      render json: @user
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def index
    @users = User.all

    render json: @users
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :location)
  end
end
