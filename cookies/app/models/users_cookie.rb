class UsersCookie < ActiveRecord::Base
  belongs_to :user
  belongs_to :cookie_type
end
