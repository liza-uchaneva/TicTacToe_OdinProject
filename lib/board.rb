class Board
    attr_accessor :cells

    def initialize()
        @cells = Array.new(9){|cell| cell = " "}
    end 
    
    def full?
        @cells.all?{ |cell| cell != " " }
    end

    def didPlayerWin?(player)
        winningCombinations = [
            [0,1,2],
            [3,4,5],
            [6,7,8],
            [0,3,6],
            [1,4,7],
            [2,5,8],
            [0,4,8],
            [2,4,6]
          ]
        return winningCombinations.any? do |line|
            @cells[line[0]] == player and @cells[line[1]] == player and @cells[line[2]] == player
        end
    end

    def getAvailableMoves()
        availableMoves = Array.new
        for i in 0..@cells.length() - 1
            if @cells[i] == " "
                availableMoves.push(i)
            end
        end

        return availableMoves
    end

end