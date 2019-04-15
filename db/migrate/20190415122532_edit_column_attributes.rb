class EditColumnAttributes < ActiveRecord::Migration[5.2]
  def change
    rename_column :accounts, :currency_amount, :amount
  end
end
