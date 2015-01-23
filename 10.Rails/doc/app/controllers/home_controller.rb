class HomeController < ApplicationController # => inherits code from ApplicationController controller
	def index
		@contacts = Contact.all
	end
end
