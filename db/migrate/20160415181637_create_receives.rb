class CreateReceives < ActiveRecord::Migration
  def change
    create_table :receives do |t|
      t.references :user, index: true, foreign_key: true
      t.references :bank, index: true, foreign_key: true
      t.string :clabe
      t.string :name

      t.timestamps null: false
    end
  end
end
