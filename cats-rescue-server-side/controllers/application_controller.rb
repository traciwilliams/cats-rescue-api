class ApplicationController < Sinatra::Base

	require 'bundler' #requiring the bundler gem
	Bundler.require #Bundler.require()

	#setting our views
	set :view, File.dirname(__FILE__) + '/../views' #backing out of the controllers folder and going into the views folder
	set :public_folder, File.dirname(__FILE__) + '/public'


	#talk to our database - our db.js
	ActiveRecord::Base.establish_connection(
		:adapter =>'mysql2',
		:database =>'catsrescue'
		)
	
	#enabling sessions
	enable :sessions, :logging 

	not_found do 
		{:message =>"not found"}.to_json
	end
	
	get '/' do
		{:message => "cat's rescue home page"}.to_json
	end	
end

