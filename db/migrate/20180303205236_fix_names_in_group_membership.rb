class FixNamesInGroupMembership < ActiveRecord::Migration[5.1]
  def change
    rename_column :group_memberships, :member, :member_id
    rename_column :group_memberships, :group, :group_id

  end
end
