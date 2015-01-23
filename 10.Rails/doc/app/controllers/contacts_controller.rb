class ContactsController < ApplicationController

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.create contact_params
		redirect_to root_path
	end

	def show
		@contact = Contact.find params[:id]
	end

	def contact_params
		params.require(:contact).permit(
			:first_name, 
			:last_name, 
			:middle_name
		)
	end
end
