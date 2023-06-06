class ArticleMailer < ApplicationMailer
default from: 'notifications@example.com'

def welcome_email(article)
  @article = article
  @url  = 'http://127.0.0.1:3000/'
  mail(to: @article.email, subject: 'The data is saved. this is info mail')
end
end
