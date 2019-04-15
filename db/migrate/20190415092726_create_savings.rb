class CreateSavings < ActiveRecord::Migration[5.2]
  def change
    create_table :savings do |t|
      t.integer :amount
      t.belongs_to :user, foreign_key: true
      t.belongs_to :currency, foreign_key: true

      t.timestamps
    end
  end
end
