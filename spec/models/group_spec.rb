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

require 'rails_helper'

RSpec.describe Group, type: :model do
  subject(:group) { Group.first }
  # p group

  it "has a founder " do
    # p group

    expect(group.founder.username).to eq("User0")
  end

  it "has a membership" do
    expect(group.memberships.first.group_id).to eq(group.id)
    expect(group.memberships.last.member_id).to eq(7)
  end
  #
  it "has a member" do
    expect(group.members.last.username).to eq("User6")
  end

  #
  describe "validations" do
    it "require group to have a founder" do
      is_expected.to validate_presence_of(:founder).with_message(/must exist/)
    end
  end
end
