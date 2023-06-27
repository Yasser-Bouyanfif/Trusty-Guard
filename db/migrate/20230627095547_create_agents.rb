class CreateAgents < ActiveRecord::Migration[7.0]
  def change
    create_table :agents do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.string :email
      t.string :phone_number
      t.string :address
      t.string :iban
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
