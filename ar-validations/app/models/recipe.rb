class Recipe < ActiveRecord::Base
  has_many :comments
  validates :title, uniqueness: true
  validates :title, presence: true
  validates :title, format: {
    with: /brussels sprouts/i,
    message: "Title must contain 'brussels sprouts'."
  }
  validates :servings, presence: true
end
