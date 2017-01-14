class AddProjectOrderToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :project_order, :integer
  end
end
