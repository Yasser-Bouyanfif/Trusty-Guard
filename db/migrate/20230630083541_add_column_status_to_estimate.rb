class AddColumnStatusToEstimate < ActiveRecord::Migration[7.0]
  def change
    add_column :estimates, :status, :string, default: 'pending'
  end
end
