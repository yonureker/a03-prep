# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gallery_id :integer          not null
#  img        :string
#

class Picture < ApplicationRecord
  has_many :ratings,
    foreign_key: :picture_id,
    class_name: :PictureRating

  belongs_to :gallery,
    foreign_key: :gallery_id,
    class_name: :Gallery

  has_many :tags,
    foreign_key: :picture_id,
    class_name: :Tag

  has_many :reviewers,
    through: :ratings,
    source: :reviewer

  has_one :photographer,
    through: :gallery,
    source: :creator
    
end
