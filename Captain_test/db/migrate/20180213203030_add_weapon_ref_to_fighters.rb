class AddWeaponRefToFighters < ActiveRecord::Migration[5.1]
  def change
    add_reference :fighters, :weapon, foreign_key: true
  end
end
