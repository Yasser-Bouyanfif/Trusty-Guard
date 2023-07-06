class Estimate < ApplicationRecord
  belongs_to :user
  belongs_to :mission
  has_one :chatroom
  has_many :contracts, through: :missions
  has_many :agents, through: :teams_missions
  has_many :contracts, through: :mission
  has_many :agents, through: :contracts
end
