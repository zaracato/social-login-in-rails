class AddFrecuenceToPays < ActiveRecord::Migration
  def change
    add_column :pays, :frecuence, :integer
  end
end
