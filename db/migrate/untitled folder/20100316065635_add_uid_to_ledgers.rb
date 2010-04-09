class AddUidToLedgers < ActiveRecord::Migration
  def self.up
    add_column :ledgers, :uid, :integer
  end

  def self.down
    remove_column :ledgers, :uid
  end
end
