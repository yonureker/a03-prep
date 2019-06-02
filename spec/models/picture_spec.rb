require 'rails_helper'

RSpec.describe Picture, type: :model do
  subject(:picture) { Picture.first }
  # p picture

  it "has a creator " do
    # p picture
    expect(picture.photographer.username).to eq("User1")
  end

  #
  it "has many tags" do
    expect(picture.tags.first.tag).to eq("Tag0")
  end

  it "has many ratings" do
    expect(picture.ratings.first.rating).to eq(0)
  end

  it "has many reviewers" do
    expect(picture.reviewers.first.username).to eq("User0")
  end

  #
  describe "validations" do
    # it "require picture to have a photographer" do
    #   is_expected.to validate_presence_of(:photographer).with_message(/must exist/)
    # end

    it "require picture to have a gallery" do
      is_expected.to validate_presence_of(:gallery).with_message(/must exist/)
    end

  end
end
