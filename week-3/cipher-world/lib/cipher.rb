class Cipher
  def encrypt(str, int)
    str.split("").map { |x| ("a".."z").to_a.unshift(" ").index(x) + int }.join("").to_i
  end
end
