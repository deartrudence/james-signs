class AddOrderToBeforeAndAfter < ActiveRecord::Migration[5.0]
  def change
    add_column :before_and_afters, :before_and_after_order, :integer
  end
end
