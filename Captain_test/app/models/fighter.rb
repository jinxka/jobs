class Fighter < ApplicationRecord
  before_validation do
    level_up
    damage_weapon
  end
  
  validates :name, presence: true, uniqueness:true
  validates :hp, presence: true
  validates :damage, presence: true
  validates :strength, presence: true
  validates :dexterity, presence: true
  validates :intelligence, presence: true
  validates :level, presence: true
  validates :experience, presence: true
  validate :weapon_validation
  
  
  def level_up
    if (self.experience >= self.level)
      self.experience = 0
      self.talent += 1
      self.level += 1
      self.hp += 10
    end
  end
  
  def weapon_validation
    if Weapon.exists?(self.weapon_id)
      weapon = Weapon.find(self.weapon_id)
      Rails.logger.debug(self.inspect)
      Rails.logger.debug(weapon.inspect)
      if (weapon.strength > self.strength) || (weapon.dexterity > self.dexterity) || (weapon.intelligence > self.intelligence)
        errors.add(:weapon, "You cannot equip this weapon")
      end
    end
  end
  
  def damage_weapon
      self.damage = Weapon.exists?(self.weapon_id) ? Weapon.find(self.weapon_id).damage : 10
  end
end

class WeaponValidator

end
