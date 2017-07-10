class CreateBeforeAndAfters < ActiveRecord::Migration[5.0]
  def change
    create_table :before_and_afters do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
