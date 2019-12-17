class Zoo
  attr_reader :name, :cages, :employees

  def initialize(name, open, close)
    @name = name
    @open = open
    @close = close
    @cages = []
    10.times {@cages << Cage.new}
    @employees = []
  end

  def add_employee(employee_object)
    @employees << employee_object
  end

  def open?(date_object)
    (@open..@close).include?(date_object)
  end

  def add_animal(animal_object)
    empty_cage = @cages.find {|cage| cage.empty?}
    if empty_cage.nil?
      return "Your zoo is already at capacity!"
    else
      return empty_cage.animal = animal_object
    end
  end

  def visit
    message = @employees.map {|employee| employee.greet}.join("\n") + "\n"
    occupied_cages = @cages.select {|cage| !cage.empty?}
    animal_message = occupied_cages.map {|cage| cage.animal.speak}.join("\n") + "\n"
    return message + animal_message
  end
end
