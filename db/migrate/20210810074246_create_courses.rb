class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name, null: false 
      t.integer :duration
      t.decimal :fees, precision: 16, scale: 2, default: 0.0

      t.timestamps
    end
  end
end
