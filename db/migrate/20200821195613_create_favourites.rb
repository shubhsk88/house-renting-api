class CreateFavourites < ActiveRecord::Migration[6.0]
  def change
    create_table :favourites do |t|
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
