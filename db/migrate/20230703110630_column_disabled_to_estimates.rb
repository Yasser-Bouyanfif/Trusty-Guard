class ColumnDisabledToEstimates < ActiveRecord::Migration[7.0]
  def change
    add_column :estimates, :disabled, :integer, default: 0
  end
end
