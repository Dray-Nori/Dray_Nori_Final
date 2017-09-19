class AddDetailsToAccounts < ActiveRecord::Migration[5.1]
  def change
   add_column :accounts, :address, :text
   add_column :accounts, :tax_id, :string
  end
end
