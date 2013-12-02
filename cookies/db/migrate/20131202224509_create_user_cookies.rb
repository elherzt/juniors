class CreateUserCookies < ActiveRecord::Migration
  def change
    create_table :users_cookies do |t|
      t.integer :user_id
      t.integer :cookie_type_id

      t.timestamps
    end
  end
end
