# == Schema Information
#
# Table name: picture_ratings
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  rater_id   :integer          not null
#  picture_id :integer          not null
#  rating     :integer
#

class PictureRating < ApplicationRecord
  belongs_to :reviewer,
    foreign_key: :rater_id,
    class_name: :User,
    optional: false

  belongs_to :picture,
    foreign_key: :picture_id,
    class_name: :Picture
end
