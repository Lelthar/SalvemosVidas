# == Schema Information
#
# Table name: forum_posts
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  datail     :string
#  category   :string
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ForumPost < ApplicationRecord
  belongs_to :user

  has_many :commentaries
  has_many :users, through: :commentaries
end
