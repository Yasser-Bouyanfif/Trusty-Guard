class Agent < ApplicationRecord
  belongs_to :user
  has_many :availabilities
  has_many :teams_missions
  has_many :missions, through: :teams_missions
end
