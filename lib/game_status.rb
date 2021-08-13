
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won?(board)
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " ",]
    false
  elsif board[WIN_COMBINATIONS[0][0]] == "X" && board[WIN_COMBINATIONS[0][1]] == "X" && board[WIN_COMBINATIONS[0][2]] == "X"
    WIN_COMBINATIONS[0]
  elsif board[WIN_COMBINATIONS[1][0]] == "X" && board[WIN_COMBINATIONS[1][1]] == "X" && board[WIN_COMBINATIONS[1][2]] == "X"
    WIN_COMBINATIONS[1]
  elsif board[WIN_COMBINATIONS[2][0]] == "X" && board[WIN_COMBINATIONS[2][1]] == "X" && board[WIN_COMBINATIONS[2][2]] == "X"
    WIN_COMBINATIONS[2] 
  elsif board[WIN_COMBINATIONS[3][0]] == "X" && board[WIN_COMBINATIONS[3][1]] == "X" && board[WIN_COMBINATIONS[3][2]] == "X"
    WIN_COMBINATIONS[3]
  elsif board[WIN_COMBINATIONS[4][0]] == "X" && board[WIN_COMBINATIONS[4][1]] == "X" && board[WIN_COMBINATIONS[4][2]] == "X"
    WIN_COMBINATIONS[4]
  elsif board[WIN_COMBINATIONS[5][0]] == "X" && board[WIN_COMBINATIONS[5][1]] == "X" && board[WIN_COMBINATIONS[5][2]] == "X"
    WIN_COMBINATIONS[5]
  elsif board[WIN_COMBINATIONS[6][0]] == "X" && board[WIN_COMBINATIONS[6][1]] == "X" && board[WIN_COMBINATIONS[6][2]] == "X"
    WIN_COMBINATIONS[6]
  elsif board[WIN_COMBINATIONS[7][0]] == "X" && board[WIN_COMBINATIONS[7][1]] == "X" && board[WIN_COMBINATIONS[7][2]] == "X"
    WIN_COMBINATIONS[7]
  elsif board[WIN_COMBINATIONS[0][0]] == "O" && board[WIN_COMBINATIONS[0][1]] == "O" && board[WIN_COMBINATIONS[0][2]] == "O"
    WIN_COMBINATIONS[0]
  elsif board[WIN_COMBINATIONS[1][0]] == "O" && board[WIN_COMBINATIONS[1][1]] == "O" && board[WIN_COMBINATIONS[1][2]] == "O"
    WIN_COMBINATIONS[1]
  elsif board[WIN_COMBINATIONS[2][0]] == "O" && board[WIN_COMBINATIONS[2][1]] == "O" && board[WIN_COMBINATIONS[2][2]] == "O"
    WIN_COMBINATIONS[2] 
  elsif board[WIN_COMBINATIONS[3][0]] == "O" && board[WIN_COMBINATIONS[3][1]] == "O" && board[WIN_COMBINATIONS[3][2]] == "O"
    WIN_COMBINATIONS[3]
  elsif board[WIN_COMBINATIONS[4][0]] == "O" && board[WIN_COMBINATIONS[4][1]] == "O" && board[WIN_COMBINATIONS[4][2]] == "O"
    WIN_COMBINATIONS[4]
  elsif board[WIN_COMBINATIONS[5][0]] == "O" && board[WIN_COMBINATIONS[5][1]] == "O" && board[WIN_COMBINATIONS[5][2]] == "O"
    WIN_COMBINATIONS[5]
  elsif board[WIN_COMBINATIONS[6][0]] == "O" && board[WIN_COMBINATIONS[6][1]] == "O" && board[WIN_COMBINATIONS[6][2]] == "O"
    WIN_COMBINATIONS[6]
  elsif board[WIN_COMBINATIONS[7][0]] == "O" && board[WIN_COMBINATIONS[7][1]] == "O" && board[WIN_COMBINATIONS[7][2]] == "O"
    WIN_COMBINATIONS[7]
  end
end 

def full? (board)
  board.all?{|token| token == "X" || token == "O"}
end 

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  if won?(board) || full?(board) 
    true
  else
    false
  end
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end