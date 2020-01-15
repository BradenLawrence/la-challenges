class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |table|
      table.string :title, null: false
      table.text :description, null: false

      table.timestamps null: false
    end
  end
end
