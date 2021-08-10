class CreatePeopleAndCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :people_courses do |t|

      t.belongs_to :person
      t.belongs_to :course 

      t.timestamps
    end
  end
end
