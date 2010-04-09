class AddUserHistoryToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :user_history, :string
  end

  def self.down
    remove_column :users, :user_history
  end
end
