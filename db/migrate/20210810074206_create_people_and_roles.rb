class CreatePeopleAndRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :people_roles do |t|
      t.belongs_to :person
      t.belongs_to :role

      t.timestamps
    end
  end
end
