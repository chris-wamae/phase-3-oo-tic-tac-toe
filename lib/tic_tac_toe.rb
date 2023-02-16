class TicTacToe
  WIN_COMBINATIONS = [
    [0, 1, 2], # Top row
    [3, 4, 5],  # Middle row
    [6, 7, 8], #Bottom row
    [0, 4, 8], #Top-left to Bottom-right
    [2, 4, 6], #Top-right to Bottom-left
    [0, 3, 6], #First-column
    [1, 4, 7], #Second-column
    [2, 5, 8], #Third-column
  ]

  def initialize(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
    @board = board
  end

  def display_board
    puts "-----------"
    puts " #{@board[0..2].join(" | ")} "
    puts "-----------"
    puts " #{@board[3..5].join(" | ")} "
    puts "-----------"
    puts " #{@board[6..8].join(" | ")} "
    puts "-----------"
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def move(player_move, token = "X")
    @board[player_move] = token
  end

  def position_taken?(index)
    @board[index.to_i].to_s == " ".to_s ? false : true
  end

  def valid_move?(position)
    if position <= 9 && position >= 0 && position_taken?(position.to_i) == false
      return true
    else
      return false
    end
  end

  def turn_count
    @board.filter {|position| position != " "}.size
  end

  def current_player 
  turn_count() % 2 == 0 ? "X" : "O" 
  end

end


def turn
   # ask for input
    # get input
     # translate input into index
      # if index is valid
       #make the move for index
        #show the board
         #else
          #restart turn
           #end
    check_player = nil
    turn_count() == "X" ? check_player = "1" : check_player = "2"
    puts "Player #{check_player}, its your turn"
    puts "Please choose your position between 1 and 9"
    choice_number = gets.chomp
    if choice_number.to_i.valid_move?() == true
      puts "add code"
    else
     turn()
   end

  end
   
   
   
   
   

    
    