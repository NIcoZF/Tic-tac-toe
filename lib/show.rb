class Show
  

  def show_board(board)
    small_arr = ["A ", "B ", "C "]
    k = 0
    puts "   1 2 3"
    0.upto(2) do |i|
        print small_arr[k]
        k += 1
      0.upto(2) do |j|
        print "|" + board.board_array[i][j].value.to_s
      end
      print "|"
      puts ""
    end
    puts ""
  end
end