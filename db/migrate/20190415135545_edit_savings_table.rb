class EditSavingsTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :savings, :currency_id, :account_id

  end
end
