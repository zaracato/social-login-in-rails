class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :card_id
      t.string :card_number
      t.string :holder_name
      t.string :expiration_year
      t.string :expiration_month
      t.string :allows_charges
      t.string :allows_payouts
      t.string :creation_date
      t.string :bank_name
      t.string :bank_code
      t.string :customer_id
      t.string :points
      t.references :addresses

      t.timestamps null: false
    end
  end
end
