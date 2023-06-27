class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.date :start_date
      t.date :end_date
      t.integer :number_of_agents
      t.string :event_type
      t.integer :budget
      t.string :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
