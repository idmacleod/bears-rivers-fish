class River

    attr_reader :name

    def initialize(name, fishes)
        @name = name
        @fishes = fishes
    end

    def fish_count()
        return @fishes.length
    end

    def lose_fish(fish)
        @fishes.delete(fish)
    end

end