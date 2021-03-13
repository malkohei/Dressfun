class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "ユーザー情報を更新しました"
      redirect_to user_path(@user)
    else
      flash[:notice] = "ユーザー情報の更新に失敗しました"
      render 'edit'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :nickname, :user_image, :introduction)
    end

end
