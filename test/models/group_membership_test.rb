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

require 'test_helper'

class GroupMembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
