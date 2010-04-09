class AddNoOfChildrenToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :no_of_children, :integer
  end

  def self.down
    remove_column :users, :no_of_children
  end
end
