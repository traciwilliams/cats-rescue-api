require 'sinatra/base'

#requiire your controllers here
require './controllers/application_controller' #requires app.rb
require './controllers/cat_controller'

#require your models here --- must be done BEFORE the mapping
require './models/cat'

map('/') {run ApplicationController}
map('/cat') {run CatController}


# #before/after filter
# before '/*' do
# 	puts "Route Log:"
# 	puts request.host
# 	puts params
# 	puts request.path
# end

# after '/*' do
# 	puts 'Completed Route Log:'
# 	puts response.body
# 	puts response.status
# end