# == Schema Information
#
# Table name: paragraphs
#
#  id          :bigint(8)        not null, primary key
#  information :string
#  slide_id    :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Paragraph < ApplicationRecord
  belongs_to :slide
end
