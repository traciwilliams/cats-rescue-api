class Songs < ActiveRecord::Migration[5.0]
  def change
  		create_table :songs do |table| #table stands for each column we are going to create - this is an iterater
  		table.string :name #column names
  		table.string :artist #column names
  		table.string :duration #column names
  	end
  end
end
