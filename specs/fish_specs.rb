require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative("../fish")

class FishTest < MiniTest::Test

    def setup()
        @fish = Fish.new("Nemo")
    end

    def test_fish_has_name
        assert_equal("Nemo", @fish.name)
    end

end