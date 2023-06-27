class RenameColumnTypeFromUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :type, :category
  end
end
