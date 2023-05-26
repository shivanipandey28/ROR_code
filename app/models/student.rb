class Student < ApplicationRecord
  #has one
  has_one :result# primary_key: :st_id
end
