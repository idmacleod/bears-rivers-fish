  
require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative("../river")

class RiverTest < MiniTest::Test

    def setup()
        @river = River.new("Amazon")
    end

    def test_river_has_name()
        assert_equal("Amazon", @river.name)
    end

    def test_new_rivers_are_empty()
        assert_equal(0, @river.count_fishes())
    end

end