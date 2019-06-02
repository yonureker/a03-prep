# == Schema Information
#
# Table name: galleries
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  creator_id  :integer          not null
#  name        :string
#  description :text
#

class Gallery < ApplicationRecord
  has_many :ratings,
    foreign_key: :gallery_id,
    class_name: :GalleryRating

  belongs_to :creator,
    foreign_key: :creator_id,
    class_name: :User

  has_many :pictures,
    foreign_key: :gallery_id,
    class_name: :Picture

  has_many :reviewers,
    through: :ratings,
    source: :reviewer
end
