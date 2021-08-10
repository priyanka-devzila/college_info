class CreateSemesters < ActiveRecord::Migration[6.1]
  def change
    create_table :semesters do |t|
      t.integer :semester_number

      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
