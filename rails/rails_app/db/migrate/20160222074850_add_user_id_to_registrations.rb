class AddUserIdToRegistrations < ActiveRecord::Migration
  def up
  	Registration.delete_all
    add_column 		:registrations, :user_id, :integer
    remove_column :registrations, :name
    remove_column :registrations, :email
  end
  def down
  	remove_column :registrations, :user_id
  	add_column		:registrations, :name, :string
  	add_column		:registrations, :email, :string
  end
end
