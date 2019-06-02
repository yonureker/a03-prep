class CreatePicture < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.timestamps
      t.integer :gallery_id, null: false
      t.string :img
    end
  end
end
