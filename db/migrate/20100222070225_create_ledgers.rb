class CreateLedgers < ActiveRecord::Migration
  def self.up
    create_table  :ledgers do |t|
	t.integer :id
	t.string  :name
	t.string  :user_id
	t.integer :amount
	t.string  :user_name 
	t.integer :group_id
        t.date	  :date_ledger
        t.timestamps
    end
  end

  def self.down
    drop_table :ledgers
  end
end
