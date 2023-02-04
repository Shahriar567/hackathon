class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :score, :integer
    add_column :users, :has_assignment, :boolean
  end
end
