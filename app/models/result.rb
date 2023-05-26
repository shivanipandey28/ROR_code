class Result < ApplicationRecord
  belongs_to :Student
  # t.belongs_to :Student, index: { unique: true }, foreign_key:
end
