class CreateFavourites < ActiveRecord::Migration[7.2]
  def change
    create_table :favourites do |t|
      t.string :car_id

      t.timestamps
    end
  end
end
