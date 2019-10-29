class Player 
    attr_reader :name
    attr_reader :health

    def initialize(name)
        @name = name
        @health = 100
    end
end