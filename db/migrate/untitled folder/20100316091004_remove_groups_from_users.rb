class RemoveGroupsFromUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :groups
  end

  def self.down
    add_column :users, :groups, :integer
  end
end
