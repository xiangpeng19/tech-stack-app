class CreateTrades < ActiveRecord::Migration[6.1]
  def change
    create_table :trades do |t|
      t.string :trade_type
      t.string :symbol
      t.decimal :open_price
      t.decimal :close_price
      t.datetime :open_date
      t.datetime :close_date

      t.timestamps
    end
  end
end
