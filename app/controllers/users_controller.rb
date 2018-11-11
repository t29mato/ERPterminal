class UsersController < ApplicationController

  before_action :get_section_and_industry_type_name
  before_action :authenticate_user, {only: [:index, :edit, :update, :destroy]}
  before_action :forbid_login_user, {only: [:login_form, :login, :new, :create]}

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

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.update(user_adjust_params)
      flash[:notice] = "更新完了しました"
      redirect_to("/users/index")
    else
      render '/users/edit'
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    flash[:notice] = "削除しました"
    redirect_to("/users/index")
  end

  def login_form
  end

  def login
    @user = User.find_by(
      mail_address: user_adjust_params[:mail_address],
      password: user_adjust_params[:password]
    )
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to "/vendors/index"
    else
      @error_message = "メールアドレス（ID）またはパスワードが間違っています。"
      @mail_address = user_adjust_params[:mail_address]
      @password = user_adjust_params[:password]
      render "users/login_form"
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to "/top"
  end


  private

  def user_adjust_params
    user_params = params.require(:user).permit(:mail_address, :password, :nickname, :company, :industry_type_id, :section_id)
    user_hash = user_params.to_h
    return user_hash
  end

  def get_section_and_industry_type_name
    @sections = Section.all
    @industry_types = IndustryType.all
  end

end
