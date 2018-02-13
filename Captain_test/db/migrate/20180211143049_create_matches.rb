class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.string :first_fighter
      t.string :second_fighter
      t.string :winner
      t.text :log
      t.timestamps
    end
    add_index :matches, :first_fighter
    add_index :matches, :second_fighter
    add_index :matches, :winner
  end
end
