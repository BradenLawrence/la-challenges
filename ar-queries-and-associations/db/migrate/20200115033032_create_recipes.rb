class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title, null:false, unique:true
      t.text :instructions, null:false
    end
  end
end
