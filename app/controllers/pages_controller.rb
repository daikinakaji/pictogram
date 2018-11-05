class PagesController < ApplicationController
  def index
    # Userテーブルからデータを全て取得
    @users = User.all
  end

  def help
  end
end
