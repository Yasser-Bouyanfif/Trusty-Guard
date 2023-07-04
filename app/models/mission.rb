class Mission < ApplicationRecord
  belongs_to :user
  has_many :contracts
  has_many :agents, through: :contracts
  has_many :estimates
  has_many :contracts
end
