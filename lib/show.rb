class Show
  

  def show_board(board)
    # small_arr = ["A ", "B ", "C "]
    # k = 0
    # puts "   1 2 3"
    # 0.upto(2) do |i|
    #     print small_arr[k]
    #     k += 1
    #   0.upto(2) do |j|
    #     print "|" + board.board_array[i][j].value.to_s
    #   end
    #   print "|"
    #   puts ""
    # end
    # puts ""


   puts "\n    1     2     3"
   puts "A   #{board.board_array[0][0].value.to_s}  |  #{board.board_array[0][1].value.to_s}  |  #{board.board_array[0][2].value.to_s} "
   puts "   ----------------"
   puts "B   #{board.board_array[1][0].value.to_s}  |  #{board.board_array[1][1].value.to_s}  |  #{board.board_array[1][2].value.to_s} "
   puts "   ----------------"
   puts "C   #{board.board_array[2][0].value.to_s}  |  #{board.board_array[2][1].value.to_s}  |  #{board.board_array[2][2].value.to_s} "
  end
end