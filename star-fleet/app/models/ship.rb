class Ship < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :ship_class, presence: true
  validates :location, presence: true
end
