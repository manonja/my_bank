class AddCompToInvest < ActiveRecord::Migration[5.2]
  def change
    add_reference :investments, :company, foreign_key: true
    add_foreign_key :investments, :companies
  end
end
