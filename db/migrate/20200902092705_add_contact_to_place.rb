class AddContactToPlace < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :contact, :text
  end
end
