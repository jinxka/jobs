class CreateWeapons < ActiveRecord::Migration[5.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :dexterity, default: 0
      t.integer :strength, default: 0
      t.integer :intelligence, default: 0
      t.integer :damage, default: 0

      t.timestamps
    end
  end
end
