# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  founder_id  :string           not null
#  description :text
#

class Group < ApplicationRecord
  has_many :memberships,
    foreign_key: :group_id,
    class_name: :GroupMembership

  belongs_to :founder,
    foreign_key: :founder_id,
    class_name: :User

  has_many :members,
    through: :memberships,
    source: :member
end
