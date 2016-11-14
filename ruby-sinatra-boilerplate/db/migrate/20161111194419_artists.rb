class Artists < ActiveRecord::Migration[5.0]
  def change
  		create_table :artists do |table| #table stands for each column we are going to create - this is an iterater
  		table.string :name #column names
  		table.string :genre #column names
  	end
  end
end
