class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  TYPE = ["Security Company", "Customer Company"].freeze
  validates :category, inclusion: { in: TYPE }
  has_many :messages, dependent: :destroy
  has_many :missions
  has_many :agents
  has_many :estimates
  has_many :chatrooms, through: :estimates
  has_one_attached :photo

  def estimates_for_role
    if self.category == "Security Company"
      self.estimates
    else
      self.missions.map { |mission| mission.estimates }.flatten
    end
  end
end
