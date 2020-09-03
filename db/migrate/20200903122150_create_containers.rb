class CreateContainers < ActiveRecord::Migration[6.0]
  def change
    create_table :containers do |t|
      t.string :address
      t.references :map
      t.float :longitude
      t.float :latitude

      t.timestamps
    end

    remove_column :maps, :coordinates
  end
end
