class LedgersUsers < ActiveRecord::Base
belongs_to :user
belongs_to :ledger
end
