class AddColumnsToAppearance < ActiveRecord::Migration[5.0]
  def change
    add_column :appearances, :guest_id, :integer
    add_column :appearances, :episode_id, :integer
  end
end
