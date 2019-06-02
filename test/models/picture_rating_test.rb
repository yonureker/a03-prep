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

require 'test_helper'

class PictureRatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
