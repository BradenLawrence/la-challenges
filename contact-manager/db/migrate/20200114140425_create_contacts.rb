class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |table|
      table.string :first_name
      table.string :last_name
      table.string :phone_number
    end
  end
end
