class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |table|
      table.string :name, null:false
      table.string :ship_class, null:false
      table.string :location, null:false
    end
  end
end
