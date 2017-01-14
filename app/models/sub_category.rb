class SubCategory < ApplicationRecord
	include RankedModel

  ranks :sub_category_order,
  	:with_same => :portfolio_section_id

  belongs_to :portfolio_section
  has_many :projects
	has_many :pictures, as: :pictureable, dependent: :destroy
	
	accepts_nested_attributes_for :pictures,
			              reject_if:lambda { |attrs|
			                attrs.all? { |key, value| value.blank? }
			              },
			              allow_destroy:true

	# def with_blank_picture
	#   pictures.build
	#   self
	# end
end
