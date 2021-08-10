class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|

      t.string :semester
      t.string :fee_description
      t.decimal :fee_amount, precision: 16, scale: 2, default: 0.0
      t.decimal :payment, precision: 16, scale: 2, default: 0.0
      t.decimal :amount_due, precision: 16, scale: 2, default: 0.0
      t.decimal :total_due, precision: 16, scale: 2, default: 0.0
      t.date :payment_date

      t.references :person, foreign_key: true 

      t.timestamps
    end
  end
end
