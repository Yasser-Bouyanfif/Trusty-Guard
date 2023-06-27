class AddColumnTypeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :type, :boolean
  end
end
