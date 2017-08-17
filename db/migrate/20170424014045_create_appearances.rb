class CreateAppearances < ActiveRecord::Migration[5.0]
  def change
    create_table :appearances do |t|
      t.integer :rating, inclusion: 1..5

      t.timestamps
    end
  end
end
