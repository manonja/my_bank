class AddDefaultValueToInvestments < ActiveRecord::Migration[5.2]
  def change
    change_column :investments, :amount, :integer, :default => 0
    change_column :investments, :bank_rate, :integer, :default => 0
  end
end
