class FixNamesInGallery < ActiveRecord::Migration[5.1]
  def change
    rename_column :galleries, :creator, :creator_id
  end
end
