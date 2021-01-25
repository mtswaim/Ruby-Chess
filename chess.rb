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
        print @horizontal
    end
end
class Piece
    def is_out_of_bounds(x, y)
        if x > 9 || y > 9 || x < 0 || y < 0
            puts "You freaking idiot, make a move inside the board"
        end
    end
end
class Pawn 
    def initialize(color,x,y)
        @icon = color == "white" ? "♙" : "♟"
    end
end

class Knight 
    def initialize(color,x,y)
        @icon = color == "white" ? "♘" : "♞"
    end
end

class Rook 
    def initialize(color,x,y)
        @icon = color == "white" ? "♖" : "♜"
    end
end

class Bishop 
    def initialize(color,x,y)
        @icon = color == "white" ? "♗" : "♝"
    end
end

class King 
    def initialize(color,x,y)
        @icon = color == "white" ? "♔" : "♚"
    end
end

class Queen
    def initialize(color,x,y)
        @icon = color == "white" ? "♕" : "♛"
    end
end

board = Board.new
rook = Rook.new("white",0,0)
board.rook
puts(board)