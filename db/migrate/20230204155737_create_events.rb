class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date_from
      t.datetime :date_to

      t.timestamps
    end
  end
end
