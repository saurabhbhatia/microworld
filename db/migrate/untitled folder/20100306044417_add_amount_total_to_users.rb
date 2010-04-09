class AddAmountTotalToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :amount_total, :integer
  end

  def self.down
    remove_column :users, :amount_total
  end
end
