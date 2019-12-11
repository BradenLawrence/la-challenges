require 'pry'

class Airplane
  attr_reader :total_passengers

  def initialize(status)
    @flying = set(status)
  end

  def flying?
    @flying
  end

  def status
    if flying?
      "We're in the air!"
    else
      "We're waiting for takeoff."
    end
  end

  def set_total_passengers(passengers)
    @total_passengers = passengers
  end

  private

  def set(status)
    status == 'flying'
  end
end
