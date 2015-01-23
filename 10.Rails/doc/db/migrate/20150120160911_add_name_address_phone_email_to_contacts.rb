class AddNameAddressPhoneEmailToContacts < ActiveRecord::Migration
  def change
  	add_column :contacts, :first_name, :string
	add_column :contacts, :middle_name, :string  	
  	add_column :contacts, :last_name, :string
  	add_column :contacts, :address, :string
  end
end
