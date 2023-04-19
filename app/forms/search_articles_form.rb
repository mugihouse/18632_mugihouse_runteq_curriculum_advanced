class SearchArticlesForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :category_id, :integer
  attribute :author_id, :integer
  attribute :title, :string

  def search
    # articleの重複レコードを一つにまとめる
    relation = Article.distinct

    # category_idで検索
    relation = relation.by_category(category_id) if category_id.present?
    relation = relation.by_author(author_id) if author_id.present?
    title_words.each do |word|
      relation = relation.title_contain(word)
    end
    relation
  end

  private

  def title_words
    title.present? ? title.split(nil) : []
  end
end
