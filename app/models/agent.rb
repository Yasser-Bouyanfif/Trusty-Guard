class Agent < ApplicationRecord
  belongs_to :user
  has_many :availabilities, dependent: :destroy
  has_many :contracts, dependent: :destroy
  has_many :missions, through: :contracts
  has_many_attached :photos
end