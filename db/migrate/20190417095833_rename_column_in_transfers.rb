class RenameColumnInTransfers < ActiveRecord::Migration[5.2]
  def change
    change_column :transfers, :receiver, :string
    change_column :transfers, :sender, :string
  end
end
