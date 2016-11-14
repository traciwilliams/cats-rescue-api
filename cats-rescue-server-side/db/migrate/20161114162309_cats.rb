class Cats < ActiveRecord::Migration[5.0]
  def change
  		create_table :cats do |table| #table stands for each column we are going to create - this is an iterater
  		table.string :name #column names
  		table.string :note #column names
  		table.string :img #column names
  	end
  end
end
