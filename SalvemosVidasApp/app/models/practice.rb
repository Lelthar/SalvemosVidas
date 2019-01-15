# == Schema Information
#
# Table name: practices
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  category    :string
#  description :string
#  lesson_id   :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Practice < ApplicationRecord
  belongs_to :lesson

  has_many :questions, dependent: :destroy
end
