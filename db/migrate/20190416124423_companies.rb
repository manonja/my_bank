class Companies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.belongs_to :investment, foreign_key: true
      t.string :name
      t.integer :rate
      t.integer :worth
      t.timestamps
    end
  end
end
