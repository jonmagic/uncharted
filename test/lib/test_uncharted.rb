require "uncharted"
require "minitest/autorun"
require "mocha"

class TestUncharted < MiniTest::Unit::TestCase
  include Mocha::Integration::MiniTest

  def test_uncharted_plays
    uncharted_instance = mock
    uncharted_instance.expects(:play)
    Uncharted.expects(:new).returns(uncharted_instance)
    assert_equal "play", Uncharted.play
  end

  def test_synth_is_bloops
    assert Uncharted.new.synth.is_a?(Bloops)
  end

  def test_instrument_uses_bloops_square
    assert Uncharted.new.instrument.is_a?(Bloops::Sound)
  end

  def test_play_sets_instrument_and_score
    uncharted = Uncharted.new
    uncharted.synth.expects(:tune).with(uncharted.instrument, uncharted.mary_had_a_little_lamb)
    uncharted.play
  end

  def test_play_plays_tune
    uncharted = Uncharted.new
    uncharted.synth.expects(:play)
    uncharted.play
  end

  def test_mary_had_a_little_lamb_has_correct_score
    assert_equal "e4 d4 c4 d4 e4 e4 e4 4 d4 d4 d4 4 e4 g4 g4 4 e4 d4 c4 d4 e4 e4 e4 c4 d4 d4 e4 d4 c4",
                 Uncharted.new.mary_had_a_little_lamb
  end
end
