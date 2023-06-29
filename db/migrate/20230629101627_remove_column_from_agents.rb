class RemoveColumnFromAgents < ActiveRecord::Migration[7.0]
  def change
    remove_column :agents, :status
  end
end
