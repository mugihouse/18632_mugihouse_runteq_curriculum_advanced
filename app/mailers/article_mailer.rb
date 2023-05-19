class ArticleMailer < ApplicationMailer
  def report_summary
    @published_articles = params[:articles]
    @articles_published_at_yesterday = @published_articles.published_at_yesterday
    mail(to: 'admin@example.com', subject: '公開済記事の集計結果')
  end
end
