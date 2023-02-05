class AddcommunitytoProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :community, :string
  end
end
