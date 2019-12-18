class Article
  attr_reader :title, :description, :url, :id

  def initialize(title, description, url, id = 0)
    @title = title
    @description = description
    @url = url
    @id = id
  end
end
