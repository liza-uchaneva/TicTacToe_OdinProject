class Dumb < Computer
    getNextTurn(board)
    {
        return board.getAvailableMoves().sample
    }
end
