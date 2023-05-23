class Comment < ApplicationRecord
  include Visible

  belongs_to :article
  validates_associated :comment
end
