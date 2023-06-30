class RemoveColumnFromEstimate < ActiveRecord::Migration[7.0]
  def change
    remove_column :estimates, :event_type
    remove_column :estimates, :budget
  end
end
