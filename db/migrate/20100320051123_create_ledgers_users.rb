class CreateLedgersUsers < ActiveRecord::Migration
  def self.up
    create_table :ledgers_users do |t|
	t.integer :user_id
	t.integer :ledger_id
      t.timestamps
    end
  end

  def self.down
    drop_table :ledgers_users
  end
end
