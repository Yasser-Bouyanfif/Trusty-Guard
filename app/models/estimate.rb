class Estimate < ApplicationRecord
  belongs_to :user
  belongs_to :mission
  has_one :chatroom
  has_many :teams_missions, through: :mission
  has_many :agents, through: :teams_missions
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :number_of_agents, presence: true
  has_many :contracts, through: :mission
  has_many :agents, through: :contracts
end
