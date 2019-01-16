class AddAttachmentImage1Image2AndImage3ToSlides < ActiveRecord::Migration[5.2]
  def change
  	add_attachment :slides, :image1
  	add_attachment :slides, :image2
  	add_attachment :slides, :image3
  end
end
