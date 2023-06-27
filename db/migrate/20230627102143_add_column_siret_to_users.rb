class AddColumnSiretToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :siret, :string
  end
end
