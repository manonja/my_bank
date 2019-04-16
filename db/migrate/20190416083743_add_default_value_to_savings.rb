class AddDefaultValueToSavings < ActiveRecord::Migration[5.2]
  def change
    change_column :savings, :amount, :integer, :default => 0

  end
end
