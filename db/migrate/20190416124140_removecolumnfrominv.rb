class Removecolumnfrominv < ActiveRecord::Migration[5.2]
  def change
    remove_column :investments, :bank_rate
  end
end
