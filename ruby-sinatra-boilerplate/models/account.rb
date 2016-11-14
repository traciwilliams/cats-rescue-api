class Account < ActiveRecord::Base #inheriting all the methods that we don't see
	self.table_name = "accounts" #self is the same as using this 
end