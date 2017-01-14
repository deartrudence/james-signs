class Picture < ApplicationRecord
  include RankedModel
	
  ranks :picture_order,
  	:with_same => [:pictureable_id, :pictureable_type]
	
	belongs_to :pictureable, polymorphic:true

	has_attached_file :image
  	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'application/pdf']


end
