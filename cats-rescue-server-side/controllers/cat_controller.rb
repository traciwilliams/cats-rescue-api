class CatController < ApplicationController

	# @account_message = ""
	# @username = ''

	require 'bundler'
	Bundler.require

	ActiveRecord::Base.establish_connection(
		:adapter => 'mysql2',
		:database => 'catsrescue'
	)

	# set :public_folder, File.expand_path('../../public', __FILE__)
	# set :views, File.expand_path('../../views', __FILE__)
	# enable :sessions

	# not_found do
	# 	erb :not_found	#404 page
	# end

	get '/' do 
	   #get all
	   Cat.all.to_json #yourmodelname.all.to_jason
	end
	
	get '/:id' do
		#get by id
		@id = params[:id]
		Cat.find(@id).to_json #model.find.argumentofid.tojson
		#in the browser do http://localhost:9292/api/superstars/2 ---> the 2 is the id
	end
	#get values indicated by table that we made
	post '/' do
		#create 

		#params is like our rec.body in node --- params is a has and we have to use the : to unlock
		@name = params[:name] #we define in postman our params 
		@note = params[:note] #we define in postman our params 
		@image = params[:image] #we define in postman our params 

		#this is how we are inserting data into the table
		@model = Cat.new #@model can be named anything - this is a creating a new row
		@model.name = @name
		@model.note = @note
		@model.img = @img
		@model.save


		#place a breakpoint in ruby!
		#binding.pry <----this is a breakpoint
		#^ the code stops here
		@model.to_json #easy to send info via json - sending back to client what has been inputted
		#goto postman
	end

	patch '/:id' do #find the element and then do something with it
		#in postman you have to put whatever id you want updated in the url
		# to update
		@id = params[:id] #comes from our url
		@name = params[:name] #comes from our form body
		@note = params[:note] #comes from our form body
		@img = params[:img] #comes from our form body

		@model = Cat.find(@id) #this represents our row
		@model.name = @name
		@model.note = @note
		@model.image = @img
		@model.save

		@model.to_json
	end

	delete '/:id' do
		#delete
		@id = params[:id]
		@model = Cat.find(@id)
		@model.destroy
		{:message =>"Item of id" + @id + "was removed."}.to_json
	end

end