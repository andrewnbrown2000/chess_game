# Define the dimensions of the chessboard
board_size = 8

# Generate the chessboard
chessboard = Array.new(board_size) { Array.new(board_size) }

# Fill the chessboard with square positions
('A'..'H').each_with_index do |file, file_index|
  (1..board_size).each_with_index do |rank, rank_index|
    chessboard[board_size - rank_index - 1][file_index] = "#{file}#{rank}"
  end
end

# Display the chessboard
chessboard.each do |row|
  puts row.join("\t")
end
