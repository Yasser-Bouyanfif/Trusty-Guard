class TeamsMission < ApplicationRecord
  belongs_to :agent
  belongs_to :mission
end
