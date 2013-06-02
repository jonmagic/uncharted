require_relative "bloopsaphone/bloops"

class Uncharted
  def self.play
    "play"
  end

  def self.synth
    @synth ||= Bloops.new
  end
end
