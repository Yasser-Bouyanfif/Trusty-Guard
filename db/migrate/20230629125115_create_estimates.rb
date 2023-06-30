class CreateEstimates < ActiveRecord::Migration[7.0]
  def change
    create_table :estimates do |t|
      t.date :start_date
      t.date :end_date
      t.integer :number_of_agents
      t.string :event_type
      t.integer :budget
      t.string :comment
      t.boolean :accepted, default: false
      t.references :user, null: false, foreign_key: true
      t.references :mission, null: false, foreign_key: true

      t.timestamps
    end
  end
end
