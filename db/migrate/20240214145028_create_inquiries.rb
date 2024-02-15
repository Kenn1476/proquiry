class CreateInquiries < ActiveRecord::Migration[7.0]
  def change
    create_table :inquiries do |t|
      t.string :reference_number
      t.string :invoice_number
      t.string :customer_email
      t.string :text
      t.timestamps
    end
  end
end
