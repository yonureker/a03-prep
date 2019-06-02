class CreateGallery < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.timestamps
      t.integer :creator, null: false
      t.string :name
      t.text :description
    end
  end
end
