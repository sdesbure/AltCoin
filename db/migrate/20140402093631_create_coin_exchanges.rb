class CreateCoinExchanges < ActiveRecord::Migration
  def change
    create_table :coin_exchanges do |t|
      t.reference :coin
      t.reference :exchange
      t.float :price
      t.datetime :update_time
      t.string :url

      t.timestamps
    end
  end
end
