class Estimate < ApplicationRecord
  belongs_to :user
  belongs_to :mission
  has_many :contracts, through: :mission
  has_many :agents, through: :contracts
end
