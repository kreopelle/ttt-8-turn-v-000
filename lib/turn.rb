def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  def position_taken?(board, index)
    if board[index] == " " || board[index] == ""
      return false
    else
      return true
    end
  end
  if index.between?(0, 8)
    if position_taken?(board, index) == false
      true
    else
      false
    end
  else
    false
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  play = gets.strip
  index = input_to_index(play)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
