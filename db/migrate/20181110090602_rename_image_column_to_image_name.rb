class RenameImageColumnToImageName < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :image_column, :image_name
  end
end
