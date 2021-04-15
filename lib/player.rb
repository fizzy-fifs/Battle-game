class Player
    BASEHP = 60
    attr_reader :name, :hp
   
    def initialize(name, hp = BASEHP )
        @name = name
        @hp = hp
    end

    def receive_damage
        @hp -= 10
    end
    
    def attack(player)
        player.receive_damage
    end

end