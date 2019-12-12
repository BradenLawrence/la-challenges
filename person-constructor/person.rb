class Person
  def initialize(first_name, last_name = nil, middle_name = nil)
    if last_name.nil?
      full_name = first_name.split
      if full_name.length > 2
        @first_name  = full_name.shift
        @last_name   = full_name.pop
        @middle_name = full_name.join(', ')
      else
        @first_name = full_name.first
        @last_name  = full_name.last
      end
    else
      @first_name  = first_name
      @last_name   = last_name
      @middle_name = middle_name
    end
  end
end
