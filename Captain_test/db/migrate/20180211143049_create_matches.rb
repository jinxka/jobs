class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :fighter1
      t.integer :fighter2
      t.integer :winner
      t.text :log
      t.timestamps
    end
  end
end
