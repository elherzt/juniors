class CreateCookieTypes < ActiveRecord::Migration
  def change
    create_table :cookie_types do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
