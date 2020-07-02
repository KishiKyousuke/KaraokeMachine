class KaraokeMachine
  SCALE = %w(C C# D D# E F F# G G# A A# B)

  attr_reader :melody
  def initialize(melody)
    @melody = melody
  end

  def transpose(key)
    notes = melody.split(/([A-G]#?| |\|)/)
    transposed_notes =
      notes.map do |note|
        n = SCALE.find_index(note)
        n.nil? ? note : SCALE[(key + n) % 12]
      end
    transposed_notes.join
  end
end
