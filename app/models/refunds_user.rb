class RefundsUser < ActiveRecord::Base
belongs_to :user
belongs_to :refund
end
