require 'rails_helper'

RSpec.describe GalleryRating, type: :model do
subject(:gallery_rating) { GalleryRating.first }

  it "has a gallery" do
    expect(gallery_rating.gallery.name).to eq("Gallery0")
  end

  it "has a reviewer" do
    expect(gallery_rating.reviewer.username).to eq("User1")
  end

  describe "validations" do
    it "require group picture_rating to have a gallery" do
      is_expected.to validate_presence_of(:gallery).with_message(/must exist/)
    end

    it "require group picture_rating to have a reviewer" do
      is_expected.to validate_presence_of(:reviewer).with_message(/must exist/)
    end
  end
end
