require 'cipher'

RSpec.describe Cipher do
  describe '#encrypt' do
    it 'returns 4 when given ("a", 3)' do
      expect(Cipher.new.encrypt('a', 3)).to eq 4
    end
    it 'returns 11 when given ("a", 10)' do
      expect(Cipher.new.encrypt('a', 10)).to eq 11
    end
    it 'returns 5 when given ("b", 3)' do
      expect(Cipher.new.encrypt('b', 3)).to eq 5
    end
    it 'returns 456 when given ("abc", 3)' do
      expect(Cipher.new.encrypt('abc', 3)).to eq 456
    end
    it 'returns 43645 when given ("a cab", 3)' do
      expect(Cipher.new.encrypt('a cab', 3)).to eq 43645
    end
  end
end
