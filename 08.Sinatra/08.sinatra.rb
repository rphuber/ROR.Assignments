require 'sinatra'
require 'faker'

# get '/' do
#   "Ryan Huber"
# end

# get '/name' do
# 	"Destiny's Child"
# end

get '/' do
	@page = "Home"
	erb :index, layout: :layout
end

get '/hello_world' do
	@page = "Hello World"
	erb :hello_world, layout: :layout
end

get '/name' do

	@page = "Name"
	@students = []

	8.times do 
		person = {}
		person["name"] = Faker::Name.name
		person["email"] = Faker::Internet.email
		@students.push(person)
	end

	erb :name, layout: :layout
end
