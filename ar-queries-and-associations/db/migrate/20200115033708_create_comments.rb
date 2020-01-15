class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      # t.belongs_to :recipe
      t.string :author, null: false
      t.text :body, null: false
    end
  end
end
