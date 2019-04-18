class Removecompanifrominv < ActiveRecord::Migration[5.2]
  def change
    remove_column :investments, :company_id
  end
end
