# == Schema Information
#
# Table name: images
#
#  id         :bigint(8)        not null, primary key
#  path       :string
#  slide_id   :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ApplicationRecord
  belongs_to :slide
end
