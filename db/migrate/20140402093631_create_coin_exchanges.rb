class CreateCoinExchanges < ActiveRecord::Migration
  def change
    create_table :coin_exchanges do |t|
      t.references :coin
      t.references :exchange
      t.float :price
      t.datetime :update_time
      t.string :url
      t.string :value

      t.timestamps
    end
  end
end
