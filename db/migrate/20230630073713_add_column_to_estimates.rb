class AddColumnToEstimates < ActiveRecord::Migration[7.0]
  def change
    add_column :estimates, :price, :integer
  end
end
