class Match < ApplicationRecord
  validates :first_fighter, presence: true
  validates :second_fighter, presence: true
  validates :winner, presence: true
  validates :log, presence: true
  
  scope :victory, ->(fighter) { where(winner:fighter) }
  scope :all_fight, -> (fighter) { where(first_fighter: fighter).or(Match.where(second_fighter: fighter)) }
end
