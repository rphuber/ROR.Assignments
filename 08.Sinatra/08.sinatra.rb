require 'sinatra'
require 'faker'

# get '/' do
#   "Ryan Huber"
# end

# get '/name' do
# 	"Destiny's Child"
# end

get '/' do
	erb :index, layout: :lazy
end

get '/hello_world' do
	erb :hello_world
end

get '/name' do

	@students = []

	12.times do 
		person = {}
		person["name"] = Faker::Name.name
		person["email"] = Faker::Internet.email
		@students.push(person)
	end

	erb :name, layout: :lazy
end
