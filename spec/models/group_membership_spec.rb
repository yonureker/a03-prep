require 'rails_helper'

RSpec.describe GroupMembership, type: :model do
subject(:membership) { GroupMembership.first }

  it "has a group" do
    expect(membership.group.description).to eq("Super Awesome Group")
  end

  it "has a member" do
    expect(membership.member.username).to eq("User1")
  end

  describe "validations" do
    it "require group membership to have a group" do
      is_expected.to validate_presence_of(:group).with_message(/must exist/)
    end

    it "require group membership to have a member" do
      is_expected.to validate_presence_of(:member).with_message(/must exist/)
    end
  end
end
