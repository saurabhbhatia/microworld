class Userps < ActiveRecord::Migration
  def self.up
 create_table(:userps, :primary_key => 'id') do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :verify_password
      t.timestamps
    end
  end

  def self.down
    drop_table :userps
  end
end
