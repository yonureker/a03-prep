# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string           not null
#

class User < ApplicationRecord
  has_many :gallery_ratings,
    foreign_key: :rater_id,
    class_name: :GalleryRating

  has_many :galleries,
    foreign_key: :creator_id,
    class_name: :Gallery

  has_many :memberships,
    foreign_key: :member_id,
    class_name: :GroupMembership

  has_many :founded,
    foreign_key: :founder_id,
    class_name: :Group

  has_many :picture_ratings,
    foreign_key: :rater_id,
    class_name: :PictureRating

  has_many :tags,
    foreign_key: :tagger_id,
    class_name: :Tag

  has_many :pictures,
    through: :galleries,
    source: :pictures

  has_many :rated_pictures,
    through: :picture_ratings,
    source: :picture

  has_many :rated_galleries,
    through: :gallery_ratings,
    source: :gallery

  has_many :groups,
    through: :memberships,
    source: :group
end
