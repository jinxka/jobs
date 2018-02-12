class CreateFighters < ActiveRecord::Migration[5.1]
  def change
    create_table :fighters do |t|
      t.string :name
      t.integer :damage, default: 10
      t.integer :hp, default: 100
      t.integer :strength, default: 0
      t.integer :dexterity, default: 0
      t.integer :intelligence, default: 0
      t.integer :experience, default: 0
      t.integer :level, default: 1
      t.integer :victory, default: 0
      t.integer :fight, default: 0
      
      t.timestamps
    end
  end
end
