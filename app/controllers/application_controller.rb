class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_current_user

  # セッションから現在のユーザー情報を取得
  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  # ログイン有無によってURLへのアクセスに制限をかける
  def authenticate_user
    if @current_user == nil
      flash[:notice] = "ログインが必要です"
      redirect_to "/login"
    end
  end

  # ログインしている場合の制限
  def forbid_login_user
    if @current_user
      flash[:notice] = "すでにログインしています"
      redirect_to("/vendors/index")
    end
  end

end
