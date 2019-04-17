class ChangeNameColumnInTransfers < ActiveRecord::Migration[5.2]
  def change
    rename_column :transfers, :sender, :sender_id
    rename_column :transfers, :receiver, :receiver_id

  end
end
