class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :line3
      t.string :state
      t.string :city
      t.string :postal_code
      t.string :country_code

      t.timestamps null: false
    end
  end
end
