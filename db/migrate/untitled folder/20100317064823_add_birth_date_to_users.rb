class AddBirthDateToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :birth_date, :date
  end

  def self.down
    remove_column :users, :birth_date
  end
end
