class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |table|
      table.string :name, null: false
      table.timestamps null: false
    end

    add_index :genres, :name, unique: true
  end
end
