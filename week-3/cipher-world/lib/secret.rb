require 'csv'

class Secret1
  def encrypt(str, int)
    str.split("").map { |char| ("a".."z").to_a.unshift(" ").index(char) + int }.join("").to_i
  end
end

class Secret2
  def initialize(message)
    @message = message
    @charset = charset
  end

  def encrypt(int)
    @message.split("").map { |char| @charset.index(char) + int }.join("")
  end

  private
  def charset
    (("a".."z").to_a + ("A".."Z").to_a).push("!").unshift(" ")
  end
end

class String
  def encrypt(int)
    self.split("").map { |char| charset.index(char) + int }.join("")
  end

  private
  def charset
    (("a".."z").to_a + ("A".."Z").to_a).push("!").unshift(" ")
  end
end

class Secret3
  def initialize(message)
    @message = message
  end

  def encrypt(int)
    @message.split("").map { |char|
      char_to_int(char) + int > 99 ? char_to_int(char) + int - 99 : char_to_int(char) + int
    }.join("").to_i
  end

  private
  def char_to_int(char)
    csv_file = File.read('/Users/ok/Projects/self-led-learning/week-3/cipher-world/lib/char_sets/character_set1.txt')
    charset = csv_file.split("\n")
    puts charset
    charset.each do |x|
      if char == x[0]
        if x.length == 4
          return x[3].join("").to_i
        else
          return [x[3],x[4]].join("").to_i
        end
      end
    end
  end
end
