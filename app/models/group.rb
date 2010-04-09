class Group < ActiveRecord::Base
validates_presence_of :group_name
validates_uniqueness_of :group_name
has_many :users 
has_and_belongs_to_many :ledgers
accepts_nested_attributes_for :users
end
