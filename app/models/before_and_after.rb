class BeforeAndAfter < ApplicationRecord
	include RankedModel

	ranks :before_and_after_order

	has_many :pictures, as: :pictureable, dependent: :destroy
	
	accepts_nested_attributes_for :pictures,
			              reject_if:lambda { |attrs|
			                attrs.all? { |key, value| value.blank? }
			              },
			              allow_destroy:true
end
