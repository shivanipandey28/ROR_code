class Supplier < ApplicationRecord
  ### has many
  # has_one :account
  ##############################################the has one throug assocciation'
  
  has_one :account
  has_one :account_history, through: :account
end
