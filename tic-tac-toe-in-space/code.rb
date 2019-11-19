def print_grid(board = [["x","o","x"],["x","o","x"],["x","o","x"]])
  def print_row(row)
    row.each_with_index do |item, index|
      unless index == 0
        print "|"
      end
      print " #{item} "
    end
    puts ""
  end
  def print_divider

  end
  board.each {|row| print_row(row)}
end

print_grid()
