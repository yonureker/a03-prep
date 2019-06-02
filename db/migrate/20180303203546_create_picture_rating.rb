class CreatePictureRating < ActiveRecord::Migration[5.1]
  def change
    create_table :picture_ratings do |t|
      t.timestamps
      t.integer :rater_id, null: false
      t.integer :picture_id, null: false
      t.integer :rating
    end
  end
end
