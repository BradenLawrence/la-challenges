class Article < ActiveRecord::Base
  has_many :article_authorships
  has_many :authors, through: :article_authorships
  has_many :comments
end
