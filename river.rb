class River

    attr_reader :name

    def initialize(name)
        @name = name
        @fishes = []
    end

    def count_fishes()
        return @fishes.length
    end

end