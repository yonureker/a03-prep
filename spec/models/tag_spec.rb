require 'rails_helper'

RSpec.describe Tag, type: :model do
subject(:tag) { Tag.first }

  it "has a picture" do
    expect(tag.picture.img).to eq("Picture0")
  end


  describe "validations" do
    it "require tag to have a picture" do
      is_expected.to validate_presence_of(:picture).with_message(/must exist/)
    end

  end
end
