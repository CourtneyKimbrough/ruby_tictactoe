class Board
  def initialize
    @cells = (1..9).to_a
  end

  def display
    puts "********************************"
    @cells.each_slice(3) { |row| puts row.join(" ")}
    puts "********************************"
  end

  def validmove?(position)
    (0..8).include?(position) && @cells.include?(position + 1)
  end

  def update_grid(position, letter)
    @cells[position] = letter if validmove?(position)
  end

  def win?
    if @cells[0] == @cells[1] && @cells[2] == @cells[1]
      return true
    elsif @cells[3] == @cells[4] && @cells[4] == @cells[5]
        return true
    elsif @cells[6] == @cells[7] && @cells[7] == @cells[8]
        return true
    elsif @cells[0] == @cells[3] && @cells[3] == @cells[6]
        return true
    elsif @cells[1] == @cells[4] && @cells[4] == @cells[7]
        return true
    elsif @cells[2] == @cells[5] && @cells[5] == @cells[8]
        return true
    elsif @cells[0] == @cells[4] && @cells[4] == @cells[8]
        return true
    elsif @cells[2] == @cells[4] && @cells[4] == @cells[6]
        return true
    else
      return false
    end
  end


end