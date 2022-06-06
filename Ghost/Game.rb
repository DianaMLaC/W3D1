class Ghost

    attr_reader :fragment
   
    def initialize
        @fragment = ""
        @dictionary = File.new
        @player_1 = Player.new
        @player_2 = Player.new
        
    end 

    def current_player
        @player_1
    end

    def previous_player
        @player_2
    end

    def next_player! #updates previous player and current player
        
    end

    def take_turn(player)
    end

    def valid_play?
    end






end