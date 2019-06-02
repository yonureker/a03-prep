class FixNamesInGroup < ActiveRecord::Migration[5.1]
  def change
    rename_column :groups, :founder, :founder_id
  end
end
