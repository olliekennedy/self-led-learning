class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def scramble_by_advancing_chars(steps)
    @contents = @contents.chars.map { |char| (char.ord + steps).chr }.join
  end

  def unscramble_by_advancing_chars(steps)
    @contents = @contents.chars.map { |char| (char.ord - steps).chr }.join
  end

  def scramble_by_reversing
    @contents = @contents.reverse
  end

  def unscramble_by_reversing
    @contents = @contents.reverse
  end
end

class Reversing
  def initialize
  end
end

class Advancing
  def initialize
  end
end


ScrambledDiary.new("My favourite colour is actually pink").scramble(ByReversing.new)
