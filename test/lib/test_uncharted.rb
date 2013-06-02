require "uncharted"
require "minitest/autorun"

class TestUncharted < MiniTest::Unit::TestCase
  def test_uncharted_plays
    assert_equal "play", Uncharted.play
  end

  def test_uncharted_synth_is_bloops
    assert Uncharted.synth.is_a?(Bloops)
  end
end
