class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :users_cookies, class_name: 'UsersCookie'

  after_destroy :destroy_cookies

  def destroy_cookies
    users_cookies.each{|user_cookie| user_cookie.destroy }
  end
end
