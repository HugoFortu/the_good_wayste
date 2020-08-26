class AddOffDatatoProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :off, :jsonb
  end
end
