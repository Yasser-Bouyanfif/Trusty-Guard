class Estimate < ApplicationRecord
  belongs_to :user
  belongs_to :mission
  has_one :chatroom
  has_many :contracts, through: :missions
  has_one :chatroom, dependent: :destroy
  has_many :agents, through: :contracts
end
