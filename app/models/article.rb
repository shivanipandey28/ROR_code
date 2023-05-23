class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy



  validates :title, presence: true
  validates :body, presence: true, length: {minimum: 10 }


    # before_validation :ensure_title_has_a_value

    # private
    #   def ensure_title_has_a_value
    #     if title.nil?
    #       self.title = title unless title.blank?
    #     end
    #   end
end



