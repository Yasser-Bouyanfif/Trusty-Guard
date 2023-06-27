class Agent < ApplicationRecord
  belongs_to :user
  has_many :availabilities
  has_many :teams_missions
  has_many :missions, through: :teams_missions
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :user_id, presence: true
  validates :user_id, uniqueness: true
  validates :user_id, numericality: { only_integer: true }
end
