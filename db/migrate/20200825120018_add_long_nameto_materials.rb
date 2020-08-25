class AddLongNametoMaterials < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :long_name, :string
  end
end
