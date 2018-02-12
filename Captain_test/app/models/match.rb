class Match < ApplicationRecord
  validates :fighter1, presence: true
  validates :fighter2, presence: true
  validates :winner, presence: true
  validates :log, presence: true
end
