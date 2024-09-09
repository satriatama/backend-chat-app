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
end
