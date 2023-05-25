class User < ApplicationRecord
has_many :books
validates :name, :age, :mobile, presence: true
validates :mobile, presence: true, length: {minimum: 10 }
end
