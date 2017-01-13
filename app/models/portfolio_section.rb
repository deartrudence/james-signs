class PortfolioSection < ApplicationRecord
	has_many :sub_categories
	has_many :projects, through: :sub_categories
	
end
