class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.string :name
      t.string :algorithm
      t.string :tag
      t.float :difficulty
      t.string :rpc_user
      t.string :rpc_password
      t.integer :rpc_port
      t.string :rpc_url
      t.string :rpc_difficulty
      t.datetime :update_date

      t.timestamps
    end
  end
end
