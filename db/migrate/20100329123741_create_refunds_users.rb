class CreateRefundsUsers < ActiveRecord::Migration
  def self.up
    create_table :refunds_users do |t|
t.integer :user_id
t.integer :refund_id
      t.timestamps
    end
  end

  def self.down
    drop_table :refunds_users
  end
end
