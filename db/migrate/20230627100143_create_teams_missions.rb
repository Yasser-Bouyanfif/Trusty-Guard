class CreateTeamsMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :teams_missions do |t|
      t.references :agent, null: false, foreign_key: true
      t.references :mission, null: false, foreign_key: true

      t.timestamps
    end
  end
end
