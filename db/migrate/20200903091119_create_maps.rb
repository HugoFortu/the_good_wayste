class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.references :place, null: false, foreign_key: true
      t.string :name
      t.text :coordinates, array: true, default: []

      t.timestamps
    end
  end
end
