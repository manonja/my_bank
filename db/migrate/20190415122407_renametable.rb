class Renametable < ActiveRecord::Migration[5.2]
  def change
    rename_table :currencies, :accounts

  end
end
