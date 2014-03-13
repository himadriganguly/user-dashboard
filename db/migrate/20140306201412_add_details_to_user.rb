class AddDetailsToUser < ActiveRecord::Migration
  def change
  	add_column("users", "first_name", :string, :limit=>25, :null=>false)
	add_column("users", :last_name, :string, :limit=>25, :null=>false)
  end
end
