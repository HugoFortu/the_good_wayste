class AddStatusToMaterials < ActiveRecord::Migration[6.0]
  def change
    add_column :materials, :status, :text
  end
end
