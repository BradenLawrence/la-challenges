class Article
  attr_reader :id, :title, :url, :description
  def initialize(id, title, url, description)
    @id = id
    @title = title
    @url = url
    @description = description
  end

  # The `db_connection` method is already defined in server.rb giving you access to it here without needing a require statement

  def self.all
    articles = []
    db_articles = db_connection do |connection|
      connection.exec("SELECT * FROM articles").to_a
    end
    db_articles.each do |db_article|
      articles << Article.new(
        db_article["id"],
        db_article["title"],
        db_article["url"],
        db_article["description"]
      )
    end
    return articles
  end

  def self.create(article_data)
    db_connection do |connection|
      connection.exec_params(
        "INSERT INTO articles (title, url, description) VALUES ($1, $2, $3);",
        [
          article_data["title"],
          article_data["url"],
          article_data["description"]
        ]
      )
    end
    posted_article = db_connection do |connection|
      connection.exec_params(
        "SELECT * FROM articles WHERE (title=$1 AND url=$2 AND description=$3)",
        [
          article_data["title"],
          article_data["url"],
          article_data["description"]
        ]
      ).to_a.first
    end
    new_article = Article.new(
      posted_article["id"],
      posted_article["title"],
      posted_article["url"],
      posted_article["description"]
    )
  end

  # Non-Core
  def self.find(id)
    db_connection do |connection|
      connection.exec("SELECT * FROM articles WHERE (id=#{id});").to_a.first
    end
  end
end
