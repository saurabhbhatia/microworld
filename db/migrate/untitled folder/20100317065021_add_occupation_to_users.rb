class AddOccupationToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :occupation, :string
  end

  def self.down
    remove_column :users, :occupation
  end
end
