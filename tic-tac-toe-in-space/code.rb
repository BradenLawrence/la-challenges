def print_grid(board = [["x","o","x"],["x","o","x"],["x","o","x"]])
  def print_divider
    puts "\n-----------"
  end
  def print_row(row)
    row.each_with_index do |item, index|
      unless index == 0
        print "|"
      end
      print " #{item} "
    end
  end
  board.each_with_index do |row, index|
    unless index == 0
      print_divider()
    end
    print_row(row)
  end
  puts ""
end

print_grid()
