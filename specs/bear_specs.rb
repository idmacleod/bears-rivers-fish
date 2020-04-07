require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative("../bear")

class BearTest < MiniTest::Test

    def setup()
        @bear = Bear.new("Yogi", "Grizzly")
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

end