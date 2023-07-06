class ChangeColumnCommentFromMissions < ActiveRecord::Migration[7.0]
  def change
    change_column :missions, :comment, :text
  end
end
