class Refund < ActiveRecord::Base
has_and_belongs_to_many :users
has_many :refunds_users
end
