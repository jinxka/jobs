class Fighter < ApplicationRecord
  before_validation do
    level_up
  end
  
  validates :name, presence: true, uniqueness:true
  validates :hp, presence: true
  validates :damage, presence: true
  validates :strength, presence: true
  validates :dexterity, presence: true
  validates :intelligence, presence: true
  validates :level, presence: true
  validates :experience, presence: true
  
  def level_up
    if (self.experience >= self.level)
      self.experience = 0
      self.level += 1
    end
  end
end
