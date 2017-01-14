class AddPictureOrderToPicture < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :picture_order, :integer
  end
end
