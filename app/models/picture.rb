class Picture < ApplicationRecord
	belongs_to :pictureable, polymorphic:true

	has_attached_file :image
  	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'application/pdf']
end
