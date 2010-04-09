class AddFutureVisionToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :future_vision, :string
  end

  def self.down
    remove_column :users, :future_vision
  end
end
