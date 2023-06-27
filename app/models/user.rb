class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  TYPE = ["Security Company", "Customer Company"].freeze
  validates :category, inclusion: { in: TYPE }
  has_many :messages
  has_many :missions
end
