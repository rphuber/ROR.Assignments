class ContactsController < ApplicationController

	def new
		@contact = Contact.new	
	end

	def create
		@contact = Contact.create contact_params
		redirect_to(root_path)
	end

	def show
		@contact = Contact.find params[:id]
	end

	def edit
		@contact = Contact.find params[:id]
	end

	def update
		@contact = Contact.find params[:id]
		@contact.update_attributes contact_params
		redirect_to(root_path)
	end

	def destroy
		@contact = Contact.find params[:id]
		@contact.delete
		redirect_to(root_path)
	end

private
	def contact_params
	  params.require(:contact).permit(
	  	:first_name,
	  	:last_name, 
	  	:phone_number,
	  	:address,
	  	:city,
	  	:state,
	  	:zip_code
	  )
	end
end
