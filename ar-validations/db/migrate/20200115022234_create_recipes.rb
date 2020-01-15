class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |table|
      table.string :title, unique: true, :limit => 140, null: false
    end
  end
end
