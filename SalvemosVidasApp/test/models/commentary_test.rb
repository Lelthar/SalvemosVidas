# == Schema Information
#
# Table name: commentaries
#
#  id            :bigint(8)        not null, primary key
#  datail        :string
#  user_id       :bigint(8)
#  forum_post_id :bigint(8)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class CommentaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
