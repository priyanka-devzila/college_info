class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name, null: false 
      t.string :email, index: {unique: true}
      t.date :date_of_birth, null: false
      t.string :phone_number
      t.integer :age 
      t.string :address
      t.string :sex
      t.string :religion
      t.date :join_date

      t.timestamps
    end
  end
end
