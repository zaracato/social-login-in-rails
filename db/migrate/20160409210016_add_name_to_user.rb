class AddNameToUser < ActiveRecord::Migration
  def change
    
    add_column :users, :phone, :string
    add_column :users, :street, :string
    add_column :users, :number, :integer
    add_column :users, :section, :string
    add_column :users, :suburb, :string
    add_column :users, :township, :string
    add_column :users, :state, :string
    add_column :users, :postal_code, :string
    add_column :users, :RFC, :string
  end
end
