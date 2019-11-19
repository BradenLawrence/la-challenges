board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]
board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]

def print_grid(board = [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]])
  def print_divider
    puts "\n-----------"
  end
  def print_row(row)
    row.each_with_index do |item, index|
      unless index == 0
        print "|"
      end
      print " #{item.nil? ? " " : item} "
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

puts "Board A:"
print_grid(board_a)
puts ""
puts "Board B:"
print_grid(board_b)
