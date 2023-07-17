class Human < Player

    def getNextTurn(board)
        puts "Please enter a cell number (from 1 to 9) that is available to place an #{self.symbol}."
        location = gets.chomp.to_i - 1
        
        while true
            x = board.getAvailableMoves()
            if x.include?(location) 
                break
            end
            
            puts "Sorry, that is an invalid answer."
            puts "Please enter a cell number (from 1 to 9) that is available to place an #{self.symbol}."
            location = gets.chomp.to_i
        end
        
        return location
    end

end
