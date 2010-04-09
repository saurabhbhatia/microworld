class CreateUsers < ActiveRecord::Migration
  def self.up
   create_table(:users, :primary_key => 'id') do |t|
	 t.integer :id
         t.string :user_name
         t.date :birth_date
         t.string :birth_place
         t.integer :age
         t.text :address
         t.string :status
	 t.string :occupation
         t.integer :income 
	 t.integer :no_of_children
	 t.integer :children_school
         t.binary :image , :limit=>2.megabytes
         t.integer :group_id
	 t.integer :totalamount, :default =>0
	 t.text :history
	 t.text :future_vision
         t.text :reason_for_saving
         t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
