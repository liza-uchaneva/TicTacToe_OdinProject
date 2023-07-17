require_relative  'board.rb'
require_relative  'player.rb'
require_relative  'computer_Player.rb'
require_relative  'human_Player.rb'

class Game

    attr_reader :player, :computer, :board

    def initialize()
        @board = Board.new()
        @player = nil
        @computer = nil
    end 

    def setUp()
        puts "Let's play a simple Tic-Tac-Toe game in the console!"
        @player = createPlayer()
        opponentSymbol = @player.symbol
        @computer = createComputer(opponentSymbol)
    end

    def createPlayer()
        puts "Please enter your name:"
        name = gets.chomp
        puts "Choose X or O:"
        symbol = gets.chomp.upcase

        until symbol.downcase == "o" || symbol.downcase == "x"
            puts "Sorry, that is an invalid answer. Please, try again."
            symbol = gets.chomp.upcase
        end

        return Human.new(name,symbol)
    end

    def createComputer(opponentSymbol)
        name  = "Computer"
        opponentSymbol.downcase == "x" ? symbol = "O" : symbol = "X"

        return Computer.new(name, symbol)
    end

    def play()
        setUp()
        @player.symbol.downcase == 'x' ? curPlayer = @player : curPlayer = @computer
        displayCurBoard(@board)

        while true
            playerTurn = curPlayer.getNextTurn(@board)

            @board.cells[playerTurn] = curPlayer.symbol
            displayCurBoard(@board)

            if @board.didPlayerWin?(curPlayer.symbol) 
                puts "GAME OVER! #{curPlayer.name} is the winner!"
                break
            end

            if @board.full?  
                puts "GAME OVER! It's a draw."
                break
            end
            
            curPlayer == @player ? curPlayer = @computer : curPlayer = @player
        end
    end

    def displayCurBoard(board)
        puts <<~HEREDOC
        |======== TIC TAC TOE ========|
        |=============================|
        |-----------------------------|
        |    #{board.cells[0]}    |    #{board.cells[1]}    |    #{board.cells[2]}    |
        |---------+---------+---------|
        |    #{board.cells[3]}    |    #{board.cells[4]}    |    #{board.cells[5]}    |
        |---------+---------+---------|
        |    #{board.cells[6]}    |    #{board.cells[7]}    |    #{board.cells[8]}    |
        |-----------------------------|
        HEREDOC
    end

end