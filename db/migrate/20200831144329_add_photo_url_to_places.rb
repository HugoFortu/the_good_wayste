class AddPhotoUrlToPlaces < ActiveRecord::Migration[6.0]
  def change
    add_column :places, :photo_url, :string
  end
end
