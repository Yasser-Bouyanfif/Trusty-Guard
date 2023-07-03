class ChangeAvailabilityToAvailabilities < ActiveRecord::Migration[7.0]
  def change
    rename_table :availability, :availabilities
  end
end
