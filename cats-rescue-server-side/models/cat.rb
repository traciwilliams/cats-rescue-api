class Cat < ActiveRecord::Base #inheriting all the methods that we don't see
	self.table_name = "cats" #self is the same as using this 
end