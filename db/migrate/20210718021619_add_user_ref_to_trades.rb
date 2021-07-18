class AddUserRefToTrades < ActiveRecord::Migration[6.1]
  def change
    add_reference :trades, :user, null: false, foreign_key: true
  end
end
