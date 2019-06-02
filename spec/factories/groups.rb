# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  founder_id  :string           not null
#  description :text
#

RSFactoryGirl.define do
  factory :board do

  end
end
