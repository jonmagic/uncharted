require_relative "bloopsaphone/bloops"

class Uncharted
  def self.play
    new.play
    "play"
  end

  def initialize
    @synth ||= Bloops.new
    @instrument ||= @synth.sound Bloops::SQUARE
  end

  attr_reader :synth, :instrument

  def play
    synth.tune instrument, mary_had_a_little_lamb
    synth.play
  end

  def mary_had_a_little_lamb
    intro = "e4 d4 c4 d4 e4 e4 e4 4 d4 d4 d4 4 e4 g4 g4 4"
    outro = "e4 d4 c4 d4 e4 e4 e4 c4 d4 d4 e4 d4 c4"

    [intro, outro].join(" ")
  end
end
