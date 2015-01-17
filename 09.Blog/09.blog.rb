require 'sinatra'
require 'data_mapper'

DataMapper.setup(
	:default,
	'mysql://root@localhost/blog'
)

# set all String properties to have a default length of 255
# DataMapper::Property::String.length(255)

class Post
	include DataMapper::Resource
	property :id, Serial
	property :title, String
	property :author, String
	property :content, String, :length => 255
end

DataMapper.finalize.auto_upgrade! #Not sure what this does again??

# Index 
get '/' do
	@page = "My Blog - Home"
	@posts = Post.all
	erb :index, layout: :layout
end