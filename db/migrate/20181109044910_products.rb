class Products < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :image_column, :string
  end
end
