class RemoveColumnInTransfers < ActiveRecord::Migration[5.2]
  def change
    remove_column :transfers, :user_id

  end
end
