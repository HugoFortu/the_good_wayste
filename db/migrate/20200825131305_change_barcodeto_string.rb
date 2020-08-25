class ChangeBarcodetoString < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :barcode, :string
  end
end
