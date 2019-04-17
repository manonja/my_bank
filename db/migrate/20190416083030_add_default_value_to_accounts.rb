class AddDefaultValueToAccounts < ActiveRecord::Migration[5.2]
  def change
    change_column :accounts, :currency_name, :string, :default => 'Cat Coins'
    change_column :accounts, :amount, :integer, :default => 100
  end
end
