class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |table|
      table.string :subject, null:false
      table.text :story, null: false
      table.timestamps null: false
    end
  end
end
