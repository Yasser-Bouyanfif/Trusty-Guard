class AddColumnDisabledToMissions < ActiveRecord::Migration[7.0]
  def change
    add_column :missions, :disabled, :integer, default: 0
  end
end
