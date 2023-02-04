class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :longi
      t.string :lati
      t.boolean :has_assignment

      t.timestamps
    end
  end
end
