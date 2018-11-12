class CreateFarmers < ActiveRecord::Migration[5.1]
  def change
    create_table :farmers do |t|
      t.string :name
      t.text :zip
      t.text :pref
      t.text :city
      t.text :adress
      t.string :image_name

      t.timestamps
    end
  end
end
