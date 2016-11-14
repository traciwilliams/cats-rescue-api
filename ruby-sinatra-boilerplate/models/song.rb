class Song < ActiveRecord::Base #inheriting all the methods that we don't see
	self.table_name = "songs" #self is the same as using this 
end