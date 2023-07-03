class DeleteStatusFromEstimate < ActiveRecord::Migration[7.0]
  def change
    remove_column :estimates, :status
  end
end
