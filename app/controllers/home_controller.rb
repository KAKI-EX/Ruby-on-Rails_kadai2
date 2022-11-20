class HomeController < ApplicationController
  # リクエストしてきたユーザーを認証する。
  # ユーザーがログイン済みの場合はアクセスを許可して、未ログインの場合はroot_pathにリダイレクトする。

  def index
    # user_signed_in?: ログイン済みの場合はtrueを返す。
    # current_user: ログイン済みの場合はログインユーザーを返す。
    # ログイン済みの場合、ログインユーザーのidをログに書き込む。
    if user_signed_in?
      logger.debug current_user.id
    end
  end

  def new
  end

end
