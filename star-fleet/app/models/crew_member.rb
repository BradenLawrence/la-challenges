class CrewMember < ActiveRecord::Base
  belongs_to :ship
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :division, presence: true

  def full_name
    [first_name, last_name].join(' ')
  end
end
