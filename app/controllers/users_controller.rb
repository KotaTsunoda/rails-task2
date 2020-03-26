class UsersController < ApplicationController
  #一覧画面に対するアクション
  def index
    @users = User.all
  end

  #新規作成画面に対するアクション
  def new
    @user = User.new
  end

  #新規登録に対するアクション

  def create
    User.create(user_params)
  end

  #詳細情報に対するアクション
  def show
    @users = User.find(params[:id])
  end
  
  #編集に対するアクション

  def edit
    @user = User.find(params[:id])
  end



  #削除に対するアクション
  def destroy
    user = User.find(params[:id])
    user.delete
  end

  #更新に対するアクション
  def update
    user = User.find(params[:id])
    user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:name, :age)
  end
end
