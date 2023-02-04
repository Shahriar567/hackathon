class Changenameinassignment < ActiveRecord::Migration[7.0]
  def change
    rename_column :assignments, :stock, :points
  end
end
