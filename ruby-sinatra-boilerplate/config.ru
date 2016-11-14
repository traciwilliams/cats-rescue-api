require 'sinatra/base'


#requiire your controllers here
require './controllers/application_controller' #requires app.rb
require './controllers/account_controller'
#require './controllers/artist_controller'
#require './controllers/song_controller'


#require your models here --- must be done BEFORE the mapping
require './models/account'
require './models/artist'
require './models/song'


map('/') {run ApplicationController}
map('/account') {run AccountController}
#map('/artist') {run ArtistController}
#map('/song') {run SongController}


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