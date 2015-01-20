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

# New
get '/new' do
	@page = "My Blog - New Post"
	erb :new_post, layout: :layout
end

#Create
post '/create_post' do
	p params
	@post = Post.new
	@post.title = params[:title]
	@post.author = params[:author]
	@post.content = params[:content]
	@post.save
	redirect to '/'
end

# Show
get '/post/:id' do
	@page = "My Blog - Post Detail"
	@post = Post.get params[:id]
	erb :post_detail, layout: :layout
end

# Edit
get '/edit/:id' do
	@page = "My Blog - Edit Post"
	@post = Post.get params[:id]
	erb :post_edit, layout: :layout
end

# Update
patch '/update_post/:id' do
	@post = Post.get params[:id]
	@post.update title:params[:title]
	@post.update author:params[:author]
	@post.update content:params[:content]
	redirect to '/'
end

# Delete
delete '/delete_post/:id' do
	@post = Post.get params[:id]
	@post.destroy
	redirect to '/'
end