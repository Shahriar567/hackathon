class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :assignments, :assignment_id, :project_id
  end
end
