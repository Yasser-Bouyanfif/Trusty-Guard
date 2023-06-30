class RemoveColumnAcceptedFromEstimates < ActiveRecord::Migration[7.0]
  def change
    remove_column :estimates, :accepted
  end
end
