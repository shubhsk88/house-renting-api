class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :img_url

      t.timestamps
    end
  end
end
