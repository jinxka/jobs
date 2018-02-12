class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.string :fighter1
      t.string :fighter2
      t.string :winner
      t.text :log
      t.timestamps
    end
  end
end
