# == Schema Information
#
# Table name: slides
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  type       :string
#  lesson_id  :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Slide < ApplicationRecord
  belongs_to :lesson
  has_many :images

end
