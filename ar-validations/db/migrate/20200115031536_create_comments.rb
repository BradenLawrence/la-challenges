class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |table|
      table.string :body, :limit => 140, null: false
    end
  end
end
