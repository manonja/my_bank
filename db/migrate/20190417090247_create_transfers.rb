class CreateTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :transfers do |t|
      t.string :receiver
      t.string :sender
      t.string :amount
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
