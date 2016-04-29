class AddAccountFromToPay < ActiveRecord::Migration
  def change
    add_column :pays, :account_from, :integer
    add_column :pays, :account_to, :integer
  end
end
