class EditInvestmentsTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :investments, :currency_id, :account_id

  end
end
