class AddChildSchoolToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :Child_School, :integer
  end

  def self.down
    remove_column :users, :Child_School
  end
end
