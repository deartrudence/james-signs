class AddDescriptionToPortfolioSection < ActiveRecord::Migration[5.0]
  def change
    add_column :portfolio_sections, :description, :text
  end
end
