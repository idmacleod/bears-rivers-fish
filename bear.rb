class Bear

    attr_reader :name, :type

    def initialize(name, type)
        @name = name
        @type = type
        @stomach = []
    end

    def food_count()
        return @stomach.length
    end

    def take_fish_from_river(fish, river)
        river.lose_fish(fish)
        @stomach << fish
    end

    def roar()
        return "ROAR... Meow!"
    end

end