class PeopleController < ApplicationController

  def index
    @msg = "ユーザー一覧"
    @user = User.all
  end

  def show
    @msg = "ユーザー情報"
    @user = User.find(params[:id])
  end

  def add
    @msg = "新規ユーザー登録"
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save then
      redirect_to '/people'
    else
      @msg = "入力に問題があります"
      render 'add'
    end
  end

  def edit
    @msg = "ユーザー情報の編集"
    @user = User.find(params[:id])
  end

  def update
    obj = User.find(params[:id])
    obj.update user_params
    redirect_to '/people'
  end

  def delete
    obj = User.find(params[:id])
    obj.destroy
    redirect_to '/people'
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :mail)
  end
  
end
