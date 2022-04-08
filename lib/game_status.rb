#require 'pry'

WIN_COMBINATIONS =  [
  [0,1,2], 
  [3,4,5],
  [8,7,6],
  [2,4,6],
  [0,4,8],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|  
    position_1 = board[win_combination[0]]
    position_2 = board[win_combination[1]] 
    position_3 = board[win_combination[2]]

    return win_combination if (position_1 == "X" && position_2 == "X" && position_3 == "X")
    return win_combination if (position_1 == "O" && position_2 == "O" && position_3 == "O")
  end
  false
end


def full?(board)
  board.reject do |spaces|
  return false if spaces == " " 
end
end



def draw?(board)
    return true if !won?(board) && full?(board)
  end


def over?(board)
   return true if draw?(board) || full?(board) || won?(board)
end


def winner(board)
  if won?(board) 
    return board [won?(board)[1]]
end
end




# def draw?(board)
#   if won? == false && full? == true
#     then return false
#   end
# end

# Build a method #draw? that accepts a board and returns true if the board has not been won but is full, false if the board is not won and the board is not full, and false if the board is won. You should be able to compose this method solely using the methods you used above with some ruby logic.




#board = [" "," "," "," "," "," "," "," "," "]


#  def full?(board)
#   board.each do |spaces|
#     if spaces == " " then return false
#     else 
#      return true
#   end
# end
# end

# def full?(board)
#   board.each do |spaces|
#     return false if spaces == " "
#     return true if spaces == "X" || "O"
#   end
# end
# end