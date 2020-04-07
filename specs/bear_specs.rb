require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class BearTest < MiniTest::Test

    def setup()
        @bear = Bear.new("Yogi", "Grizzly")
        @fish1 = Fish.new("Nemo")
        @fish2 = Fish.new("Dory")
        @fish3 = Fish.new("Bubbles")
        @river = River.new("Amazon", [@fish1, @fish2, @fish3])
    end

    def test_bear_has_name
        assert_equal("Yogi", @bear.name)
    end

    def test_bear_has_type
        assert_equal("Grizzly", @bear.type)
    end

    def test_new_bears_have_empty_stomachs
        assert_equal(0, @bear.food_count())
    end

    def test_take_fish_from_river__one_fish()
        @bear.take_fish_from_river(@fish2, @river)
        assert_equal(2, @river.fish_count())
        assert_equal(1, @bear.food_count())
    end

    def test_take_fish_from_river__two_fish()
        @bear.take_fish_from_river(@fish2, @river)
        @bear.take_fish_from_river(@fish1, @river)
        assert_equal(1, @river.fish_count())
        assert_equal(2, @bear.food_count())
    end

end