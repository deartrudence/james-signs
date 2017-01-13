class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.references :sub_category, foreign_key: true
      t.string :title
      t.text :description
      t.string :item_number
      t.string :size
      t.text :materials
      t.boolean :recent

      t.timestamps
    end
  end
end
