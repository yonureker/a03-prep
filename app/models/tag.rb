# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  picture_id :integer          not null
#  tagger_id  :integer          not null
#  tag        :string
#

class Tag < ApplicationRecord
  belongs_to :picture,
    foreign_key: :picture_id,
    class_name: :Picture

  belongs_to :taggers,
    foreign_key: :tagger_id,
    class_name: :User
end
