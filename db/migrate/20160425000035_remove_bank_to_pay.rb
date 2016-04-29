class RemoveBankToPay < ActiveRecord::Migration
  def change
    remove_column :pays, :bank, :reference
    
  end
end
