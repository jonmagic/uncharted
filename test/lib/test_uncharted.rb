require "uncharted"
require "minitest/autorun"

class TestUncharted < MiniTest::Unit::TestCase
  def test_uncharted_plays
    assert_equal "play", Uncharted.play
  end
end
