# == Schema Information
#
# Table name: questions
#
#  id          :bigint(8)        not null, primary key
#  description :string
#  correct     :string
#  incorrect1  :string
#  incorrect2  :string
#  incorrect3  :string
#  practice_id :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
