class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.string :name
      t.string :algorithm
      t.string :tag
      t.float :difficulty
      t.datetime :update_date

      t.timestamps
    end
  end
end
