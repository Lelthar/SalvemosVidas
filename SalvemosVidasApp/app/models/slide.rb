# == Schema Information
#
# Table name: slides
#
#  id                  :bigint(8)        not null, primary key
#  title               :string
#  tipo                :string
#  lesson_id           :bigint(8)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  parrafo1            :text
#  parrafo2            :text
#  parrafo3            :text
#  imagen1             :text
#  imagen2             :text
#  imagen3             :text
#  image1_file_name    :string
#  image1_content_type :string
#  image1_file_size    :integer
#  image1_updated_at   :datetime
#  image2_file_name    :string
#  image2_content_type :string
#  image2_file_size    :integer
#  image2_updated_at   :datetime
#  image3_file_name    :string
#  image3_content_type :string
#  image3_file_size    :integer
#  image3_updated_at   :datetime
#

class Slide < ApplicationRecord
	has_attached_file :image1, styles: { medium: "350x350>", small: "250x250>" }, default_url: "/images/:style/missing.jpeg"
	has_attached_file :image2, styles: { medium: "350x350>", small: "250x250>" }, default_url: "/images/:style/missing.jpeg"
	has_attached_file :image3, styles: { medium: "350x350>", small: "250x250>" }, default_url: "/images/:style/missing.jpeg"
  
  validates_attachment_content_type :image1, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :image2, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :image3, content_type: /\Aimage\/.*\z/

  belongs_to :lesson

end
