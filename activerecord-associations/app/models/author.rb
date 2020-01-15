class Author < ActiveRecord::Base
  has_many :article_authorships
  has_many :articles, through: :article_authorships
end
