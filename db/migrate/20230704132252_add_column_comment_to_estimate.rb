class AddColumnCommentToEstimate < ActiveRecord::Migration[7.0]
  def change
    add_column :estimates, :comment, :text
  end
end
