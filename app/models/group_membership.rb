# == Schema Information
#
# Table name: group_memberships
#
#  id         :integer          not null, primary key
#  member_id  :integer          not null
#  group_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GroupMembership < ApplicationRecord
  belongs_to :member,
    foreign_key: :member_id,
    class_name: :User

  belongs_to :group,
    foreign_key: :group_id,
    class_name: :Group
end
