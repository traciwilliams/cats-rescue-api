class Artist < ActiveRecord::Base #inheriting all the methods that we don't see
	self.table_name = "artists" #self is the same as using this 
end