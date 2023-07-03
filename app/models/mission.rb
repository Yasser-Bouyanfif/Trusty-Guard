class Mission < ApplicationRecord
  belongs_to :user
  has_many :teams_missions
  has_many :agents, through: :teams_missions
  has_many :estimates
  has_many :contracts
end
