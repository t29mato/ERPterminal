class UsersController < ApplicationController

  def index
    @users = User.all.order(id: 'asc')
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_adjust_params)
    if @user.save
      flash[:notice] = "ユーザ登録完了しました"
      redirect_to("/users/index")
    else
      render '/users/new'
    end
  end


  private

  def user_adjust_params
    user_params = params.require(:user).permit(:mail_address, :password, :nickname)
    user_hash = user_params.to_h
    return user_hash
  end

end