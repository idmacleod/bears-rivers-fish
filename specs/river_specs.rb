  
require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

require_relative("../river")

class RiverTest < MiniTest::Test

    def setup()
        @river = River.new("Amazon")
    end

end