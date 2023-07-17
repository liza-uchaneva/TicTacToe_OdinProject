class Computer < Player 
    
    def getNextTurn(board)
        rndVal  = board.getAvailableMoves().sample(1)[0]
        return rndVal
    end

    def minimax()

    end

    def createTree(board)
        availableMoves = board.getAvailableMoves()

        availableMoves.each do|move| 

        end
    end
end