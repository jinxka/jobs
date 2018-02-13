class Match < ApplicationRecord
  validates :first_fighter, presence: true
  validates :second_fighter, presence: true
  validates :winner, presence: true
  validates :log, presence: true

  after_save  :update_winner_experience
  
  scope :victory, ->(fighter) { where(winner:fighter) }
  scope :all_fight, -> (fighter) { where(first_fighter: fighter).or(Match.where(second_fighter: fighter)) }

  def update_winner_experience
    winner = Fighter.find_by(name: self.winner)
    winner.update!(experience: winner.experience + 1)
  end
end
