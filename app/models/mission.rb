class Mission < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :teams_missions
  has_many :agents, through: :teams_missions
  has_many :estimates
  has_many :contracts
end
