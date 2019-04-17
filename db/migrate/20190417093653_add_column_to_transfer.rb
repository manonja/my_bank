class AddColumnToTransfer < ActiveRecord::Migration[5.2]
  def change
    add_column :transfers, :name, :string

  end
end
