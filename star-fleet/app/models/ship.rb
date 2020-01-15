class Ship < ActiveRecord::Base
  has_many :crew_members
  validates :name, presence: true, uniqueness: true
  validates :ship_class, presence: true
  validates :location, presence: true
end
