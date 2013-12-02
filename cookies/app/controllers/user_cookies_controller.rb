class UserCookiesController < ApplicationController
  def index
    @user = User.find(params[:id])
    @user_cookies = UsersCookie.
      select('users_cookies.*, count(users_cookies.cookie_type_id) AS cookie_count').
      where(user_id: 1).
      group(:cookie_type_id)
  end

  def create
    @cookie_type = CookieType.find(params[:cookie_type_id])
    @user = User.find(params[:id])
    UsersCookie.create user: @user, cookie_type: @cookie_type
    redirect_to "/users/#{ @user.id }/cookies"
  end
end
