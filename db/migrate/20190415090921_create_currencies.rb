class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.belongs_to :user, foreign_key: true
      t.string :currency_name
      t.integer :currency_amount

      t.timestamps
    end
  end
end
