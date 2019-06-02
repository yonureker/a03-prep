require 'rails_helper'

RSpec.describe PictureRating, type: :model do
subject(:pic_rating) { PictureRating.first }

  it "has a picture" do
    expect(pic_rating.picture.img).to eq("Picture0")
  end

  it "has a reviewer" do
    expect(pic_rating.reviewer.username).to eq("User0")
  end

  describe "validations" do
    it "require group picture_rating to have a picture" do
      is_expected.to validate_presence_of(:picture).with_message(/must exist/)
    end

    it "require group picture_rating to have a reviewer" do
      is_expected.to validate_presence_of(:reviewer).with_message(/must exist/)
    end
  end
end
