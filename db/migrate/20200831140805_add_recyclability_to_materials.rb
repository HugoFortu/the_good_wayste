class AddRecyclabilityToMaterials < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :recyclability, :text
  end
end
