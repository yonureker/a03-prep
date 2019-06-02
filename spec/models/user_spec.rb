require 'rails_helper'

RSpec.describe User, type: :model do
subject(:user2) { User.find(2)}
subject(:user) {User.first}

  it "has a group" do
    # p :user.groups
    expect(user2.groups.first.description).to eq("Super Awesome Group")
  end

  it "has a membership" do
    expect(user2.memberships.first.member.username).to eq("User1")
  end

  it "has a founded group" do
    expect(user.founded.first.description).to eq("Super Awesome Group")
  end

  it "has many pictures" do
    expect(user2.pictures.first.img).to eq("Picture0")
  end

  it "has many picture reviews"do
    expect(user2.picture_ratings.first.rating).to eq(1)
  end

  it "has many gallery reviews"do
    expect(user2.gallery_ratings.first.rating).to eq(0)
  end

  it "has many reviewed pictures"do
    expect(user2.rated_pictures.first.img).to eq("Picture1")
  end

  it "has many reviewed galleries"do
    expect(user2.rated_galleries.first.name).to eq("Gallery0")
  end

end
