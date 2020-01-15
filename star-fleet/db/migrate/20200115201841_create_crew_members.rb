class CreateCrewMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :crew_members do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :division, null: false
      t.belongs_to :ship
    end
  end
end
