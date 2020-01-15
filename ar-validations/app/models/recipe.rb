class Recipe < ActiveRecord::Base
  has_many :comments
  validates :title, uniqueness: true
  validates :title, presence: true
end
