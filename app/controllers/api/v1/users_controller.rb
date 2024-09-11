class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    if users
      render json: {
      status: 'SUCCESS',
      message: 'Loaded users',
      data: users
    }, status: :ok
    else
      render json: {
        status: 'ERROR',
        message: 'Users not found',
        data: users.errors
      }, status: :unprocessable_entity
    end
  end

  def show
    user = User.find(params[:id])
    if user
      render json: {
        status: 'SUCCESS',
        message: 'Loaded user',
        data: user
      }, status: :ok
    else
      render json: {
        status: 'ERROR',
        message: 'User not found',
        data: user.errors
      }, status: :unprocessable_entity
    end
  end
end
