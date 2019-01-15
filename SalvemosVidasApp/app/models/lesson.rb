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

class Lesson < ApplicationRecord
	validates :name, uniqueness: true
  belongs_to :user

  has_many :slides
  has_many :practices

end
