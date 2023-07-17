require_relative  'game.rb'

def play_game
    game = Game.new
    while true
        game.play()
        game = Game.new
    end
end
play_game