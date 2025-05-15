class Board
  def initialize
    @cells = [[1,2,3], [4, 5, 6], [7, 8, 9]]
  end

  def display
    puts @cells[0].join(' ')
    puts @cells[1].join(' ')
    puts @cells[2].join(' ')
  end

  def validmove?(position)
    (1..9).include?(position) && @cells.include(position)
  end

  def update_grid(position, letter)
    @cells[position] = letter if validmove?(position)
  end


end