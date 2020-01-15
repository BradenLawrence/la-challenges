class Comment < ActiveRecord::Base
  belongs_to :recipe
  validates :author, presence: true
  validates :body, presence: true
end
