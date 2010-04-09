class AddIncomeToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :income, :string
  end

  def self.down
    remove_column :users, :income
  end
end
