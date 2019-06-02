class CreateGroupMembership < ActiveRecord::Migration[5.1]
  def change
    create_table :group_memberships do |t|
      t.integer :member, null: false
      t.integer :group, null: false
      t.timestamps
    end
  end
end
