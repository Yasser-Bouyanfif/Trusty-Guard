class RemoveColumnsFromEstimate < ActiveRecord::Migration[7.0]
  def change
    remove_column :estimates, :price
    remove_column :estimates, :number_of_agents
    remove_column :estimates, :start_date
    remove_column :estimates, :end_date
    remove_column :estimates, :comment
  end
end
