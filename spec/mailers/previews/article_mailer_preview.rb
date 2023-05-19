# Preview all emails at http://localhost:3000/rails/mailers/article_mailer
class ArticleMailerPreview < ActionMailer::Preview
  def activation_email
    ArticleMailer.with(articles: Article.published).report_summary
  end
end
