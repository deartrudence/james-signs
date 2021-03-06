class Project < ApplicationRecord
  include RankedModel
  
  ranks :project_order,
    :with_same => :sub_category_id

  belongs_to :sub_category
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
