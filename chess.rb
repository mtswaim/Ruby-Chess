class Board
    attr_accessor :grid, :knight
    def initialize
        @grid = Array.new(8) {Array.new(8, " ") }
        @white_king = "♔"
        @white_queen = "♕"
        @white_rook = "♖"
        @white_bishop = "♗"
        @white_knight = "♘"
        @white_pawn = "♙"
        @black_king = "♚"
        @black_queen = "♛"
        @black_rook = "♜"
        @black_bishop = "♝"
        @black_knight = "♞"
        @black_pawn = "♟" 
    end
    def to_s
        @grid.each do | line | 
        print "\n"
        @horizontal = "+----+----+----+----+----+----+----+----+"
        puts @horizontal
        line.each do | slot |
        print "| #{slot}  "
        end
        print "|"
        end
        print "\n"
        print @horizontal
    end
end

class Piece
end

class Rook
    
end

board = Board.new
board.knight
puts(board)