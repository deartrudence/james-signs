class AddMenuPictureToPortfolioSection < ActiveRecord::Migration[5.0]
  def change
  	add_column :portfolio_sections, :menu_picture, :string
  end
end
