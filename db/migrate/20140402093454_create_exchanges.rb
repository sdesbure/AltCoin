class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.string :name
      t.string :url
      t.string :encapsulation

      t.timestamps
    end
  end
end
