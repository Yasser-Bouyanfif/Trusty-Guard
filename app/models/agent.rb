class Agent < ApplicationRecord
  include PgSearch::Model


  belongs_to :user
  has_many :availabilities
  has_and_belongs_to_many :missions
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :user_id, presence: true, uniqueness: true, numericality: { only_integer: true }
  validates :birth_date, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true, numericality: { only_integer: true }
  validates :address, presence: true
  validates :iban, presence: true, uniqueness: true

  before_validation :set_default_status

  pg_search_scope :search_by_name,
    against: [ :first_name, :last_name ],
    using: {
      tsearch: { prefix: true }
    }

end
