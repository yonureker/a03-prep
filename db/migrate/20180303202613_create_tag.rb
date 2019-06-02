class CreateTag < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.timestamps
      t.integer :picture_id, null: false
      t.integer :tagger_id, null: false
      t.string :tag
    end
  end
end
