class Board
    attr_accessor :grid
    def initialize
        @grid = Array.new(8) {Array.new(8, " ") }
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
        puts @horizontal
    end
    def starting_pieces(piece,x,y)
        @grid[x][y] = piece.icon
    end
end
class Piece
    def is_out_of_bounds(x, y)
        if x > 9 || y > 9 || x < 0 || y < 0
            puts "You freaking idiot, make a move inside the board"
        end
    end
end
class Pawn < Piece
    def initialize(color)
        @icon = color == "white" ? "♙" : "♟"
    end
end

class Knight < Piece
    def initialize(color)
        @icon = color == "white" ? "♘" : "♞"
    end
end

class Rook < Piece
    attr_accessor :icon
    def initialize(color)
        @icon = color == "white" ? "♖" : "♜"
    end
end

class Bishop < Piece
    def initialize(color)
        @icon = color == "white" ? "♗" : "♝"
    end
end

class King < Piece
    def initialize(color)
        @icon = color == "white" ? "♔" : "♚"
    end
end

class Queen < Piece
    def initialize(color)
        @icon = color == "white" ? "♕" : "♛"
    end
end

board = Board.new
rook = Rook.new("white")
b_rook = Rook.new("black")
board.starting_pieces(rook,7,0)
board.starting_pieces(rook,7,7)
board.starting_pieces(b_rook,0,0)
board.starting_pieces(b_rook,0,7)
puts(board)