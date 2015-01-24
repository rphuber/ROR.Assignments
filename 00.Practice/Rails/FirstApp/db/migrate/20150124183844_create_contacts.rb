class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :phone_number
    	t.string :address
    	t.string :city
    	t.string :state
    	t.decimal :zip_code
      t.timestamps null: false
    end
  end
end
