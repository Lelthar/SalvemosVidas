# == Schema Information
#
# Table name: lessons
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :string
#  category    :string
#  user_id     :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class LessonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
