class Ledger < ActiveRecord::Base
has_and_belongs_to_many :users
has_many :ledgers_users
has_and_belongs_to_many :groups
validates_numericality_of :amount
serialize :ledger ,Array
end


