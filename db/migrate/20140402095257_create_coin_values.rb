class CreateCoinValues < ActiveRecord::Migration
  def change
    create_table :coin_values do |t|
      t.reference :coin
      t.reference :exchange
      t.datetime :time_when
      t.float :difficulty
      t.float :price

      t.timestamps
    end
  end
end
