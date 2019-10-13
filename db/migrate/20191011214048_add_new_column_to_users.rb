class AddNewColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :onlinename, :string, unique: true
  end
end
