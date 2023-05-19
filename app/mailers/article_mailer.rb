class ArticleMailer < ApplicationMailer
  def report_summary
    @published_articles = params[:articles]
    @articles_published_at_yesterday = @published_articles.where(published_at: Time.current.yesterday)
    mail(to: 'admin@example.com', subject: '公開済記事の集計結果')
  end
end
