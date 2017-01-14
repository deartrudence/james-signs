class AddSubCategoryOrderToSubCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :sub_categories, :sub_category_order, :integer
  end
end
