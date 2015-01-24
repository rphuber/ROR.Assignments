class HomeController < ApplicationController
	def index 
		@page = "Home"
		@contacts = Contact.all
	end
end
