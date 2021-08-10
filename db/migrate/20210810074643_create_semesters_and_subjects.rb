class CreateSemestersAndSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :semesters_subjects do |t|

      t.belongs_to :semester
      t.belongs_to :subject
      t.timestamps
    end
  end
end
