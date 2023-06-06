class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy
  ##callback
  before_validation :title_should_be_upcase




validates :title, :email, presence: true
validates :body, presence: true, length: {minimum: 10 }

##callaback
  after_validation :body_should_be_lower_case
  private

    def title_should_be_upcase
   self.title = title.upcase
    end
    def body_should_be_lower_case
      self.body = body.downcase
    end



end



