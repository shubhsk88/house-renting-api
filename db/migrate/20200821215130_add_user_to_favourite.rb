class AddUserToFavourite < ActiveRecord::Migration[6.0]
  def change
    add_reference :favourites, :user, null: false, foreign_key: true
  end
end
