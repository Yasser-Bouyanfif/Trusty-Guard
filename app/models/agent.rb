class Agent < ApplicationRecord
  belongs_to :user
  has_many :availabilities
  has_many :contracts
  has_many :missions, through: :contracts
end
