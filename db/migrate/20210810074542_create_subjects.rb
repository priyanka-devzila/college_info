class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|

      t.string :name 
      t.integer :max_marks
      t.integer :pass_marks

      t.timestamps
    end
  end
end
