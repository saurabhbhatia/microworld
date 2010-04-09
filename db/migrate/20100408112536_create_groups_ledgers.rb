class CreateGroupsLedgers < ActiveRecord::Migration
  def self.up
    create_table :groups_ledgers do |t|
t.integer :group_id
t.integer :ledger_id
      t.timestamps
    end
  end

  def self.down
    drop_table :groups_ledgers
  end
end
