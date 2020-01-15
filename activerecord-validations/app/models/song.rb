class Song < ActiveRecord::Base
  validates :year, numericality: true, length: { within: 2..4 }
end
