class Person
  def initialize(first_name, last_name = nil)
    if last_name.nil?
      full_name = first_name.split
      @first_name = full_name.first
      @last_name = full_name.last
    else
      @first_name = first_name
      @last_name = last_name
    end
  end
end
