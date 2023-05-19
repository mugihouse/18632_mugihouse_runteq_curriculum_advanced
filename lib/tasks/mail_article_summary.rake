namespace :mail_article_summary do
  desc '公開済の記事数、機能公開された記事数とタイトルを表示'
  task mail_summary: :development do
    ArticleMailer.with(articles: Article.published).report_summary
  end
end
