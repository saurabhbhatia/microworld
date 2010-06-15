class User < ActiveRecord::Base
validates_presence_of :group_id
validates_numericality_of :income
validates_numericality_of :age
#validates_presence_of :image
belongs_to :group
file_column :image , :magick => { :geometry => "150x150" }
has_and_belongs_to_many :ledgers
has_and_belongs_to_many :refunds
has_many :ledgers_users
end


