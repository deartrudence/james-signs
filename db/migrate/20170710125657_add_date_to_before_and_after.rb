class AddDateToBeforeAndAfter < ActiveRecord::Migration[5.0]
  def change
    add_column :before_and_afters, :date, :date
  end
end
