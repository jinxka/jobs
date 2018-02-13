class Weapon < ApplicationRecord
  validates :name, presence: true, uniqueness:true
  validates :damage, presence: true
  validates :strength, presence: true
  validates :dexterity, presence: true
  validates :intelligence, presence: true
  
  scope :valid_weapon, -> (dext, str, intel){where("dexterity <= ? AND strength <= ? AND intelligence <= ?", dext, str, intel)}
end
