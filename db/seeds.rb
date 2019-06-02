# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times { |i| User.create!(username: "User#{i}") }
Group.create!(founder_id: 1, description: "Super Awesome Group")
Group.create!(founder_id: 6, description: "Even Better Group")
GroupMembership.create!(group_id: 1, member_id: 2)
GroupMembership.create!(group_id: 1, member_id: 3)
GroupMembership.create!(group_id: 1, member_id: 4)
GroupMembership.create!(group_id: 1, member_id: 5)
GroupMembership.create!(group_id: 1, member_id: 7)
GroupMembership.create!(group_id: 2, member_id: 7)
GroupMembership.create!(group_id: 2, member_id: 2)
GroupMembership.create!(group_id: 2, member_id: 4)
GroupMembership.create!(group_id: 2, member_id: 8)
GroupMembership.create!(group_id: 2, member_id: 9)

5.times { |i| Gallery.create!(creator_id: ((i + 1) * 2), name: "Gallery#{i}") }

50.times { |i| Picture.create!(gallery_id: ((i % 5) + 1), img: "Picture#{i}") }

50.times { |i| Tag.create!(picture_id: (i + 1), tagger_id: ((i + 1) % 10), tag: "Tag#{i}") }

5.times { |i| GalleryRating.create!(rater_id: ((i + 1) * 2), gallery_id: (i + 1), rating: (i % 5)) }

30.times { |i| PictureRating.create!(rater_id: ((i % 10) + 1), picture_id: (i + 1), rating: (i % 5)) }
