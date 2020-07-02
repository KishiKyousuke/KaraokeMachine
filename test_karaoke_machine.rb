require "./karaoke_machine.rb"
require "minitest/autorun"

class KaraokeMachineTest < Minitest::Test
  def test_transpose
    melody1 = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
    karaoke1 = KaraokeMachine.new(melody1)

    expected2 = "D E F# G |F# E D   |F# G A B |A G F#   |D   D   |D   D   |DDEEF#F#GG|F# E D   "
    assert_equal expected2, karaoke1.transpose(2)

    expected_minus1 = "B C# D# E |D# C# B   |D# E F# G# |F# E D#   |B   B   |B   B   |BBC#C#D#D#EE|D# C# B   "
    assert_equal expected_minus1, karaoke1.transpose(-1)

    expected12 = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
    assert_equal expected12, karaoke1.transpose(12)

    expected14 = "D E F# G |F# E D   |F# G A B |A G F#   |D   D   |D   D   |DDEEF#F#GG|F# E D   "
    assert_equal expected14, karaoke1.transpose(14)

    melody2 = "F# G# A# B |A# G# F#   |A# B C# D# |C# B A#   |F#   F#   |F#   F#   |F#F#G#G#A#A#BB|A# G# F#   "
    karaoke2 = KaraokeMachine.new(melody2)

    expected6 = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
    assert_equal expected6, karaoke2.transpose(6)

    expected_minus6 = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
    assert_equal expected_minus6, karaoke2.transpose(-6)
  end
end
