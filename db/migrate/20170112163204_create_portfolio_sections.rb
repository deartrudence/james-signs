class CreatePortfolioSections < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolio_sections do |t|
      t.string :title

      t.timestamps
    end
  end
end
