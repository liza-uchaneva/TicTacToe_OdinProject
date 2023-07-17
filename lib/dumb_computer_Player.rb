class Dumb < Computer
    getNextTurn(board)
    {
        rndVal  = board.getAvailableMoves().sample(1)[0]
        return rndVal
    }
end
