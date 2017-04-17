class AddRatingToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :rating, :integer
  end
end
