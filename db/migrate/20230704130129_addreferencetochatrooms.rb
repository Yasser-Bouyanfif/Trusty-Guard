class Addreferencetochatrooms < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :estimate, foreign_key: true
  end
end
