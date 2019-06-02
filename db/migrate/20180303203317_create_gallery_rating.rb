class CreateGalleryRating < ActiveRecord::Migration[5.1]
  def change
    create_table :gallery_ratings do |t|
      t.timestamps
      t.integer :rater_id, null: false
      t.integer :gallery_id, null: false
      t.integer :rating
    end
  end
end
