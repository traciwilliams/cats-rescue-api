class Accounts < ActiveRecord::Migration[5.0]
  def change
  		create_table :accounts do |table| #table stands for each column we are going to create - this is an iterater
  		table.string :email #column names
  		table.string :password_hash #column names
  		table.string :password_salt
  		table.string :username #column names
  		table.string :about
  	end
  end
end
