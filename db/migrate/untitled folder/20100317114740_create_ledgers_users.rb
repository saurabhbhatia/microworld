class CreateLedgersUsers < ActiveRecord::Migration
  def self.up
    create_table :ledgers_users do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :ledgers_users
  end
end
