require 'sinatra'

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
	@students = [
		{
			first_name: "William",
			last_name: "Griffin"
		}, 
		{
			first_name: "Ryan",
			last_name: "Huber"
		}
	]

	erb :name, layout: :lazy
end