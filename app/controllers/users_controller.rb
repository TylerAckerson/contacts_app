class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    @user = User.new(user_attributes)
    if @user.save
      render json: @user
    else
      render(
        json: @user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update!(user_attributes)
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy!
    render json: @user
  end

  private
  def user_attributes
    params.require(:user).permit(:name, :email)
  end
end
