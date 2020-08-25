class AddStatustoProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :clean, :boolean
  end
end
