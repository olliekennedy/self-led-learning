require 'secret'

RSpec.describe Secret1 do
  describe '#encrypt' do
    it 'returns 4 when given ("a", 3)' do
      expect(subject.encrypt('a', 3)).to eq 4
    end
    it 'returns 11 when given ("a", 10)' do
      expect(subject.encrypt('a', 10)).to eq 11
    end
    it 'returns 5 when given ("b", 3)' do
      expect(subject.encrypt('b', 3)).to eq 5
    end
    it 'returns 456 when given ("abc", 3)' do
      expect(subject.encrypt('abc', 3)).to eq 456
    end
    it 'returns 43645 when given ("a cab", 3)' do
      expect(subject.encrypt('a cab', 3)).to eq 43645
    end
  end
end

RSpec.describe Secret2 do
  describe '#encrypt' do
    it 'returns 4228317416831222334726421756 when given 3' do
      secret = Secret2.new('My name is Edward!')
      expect(secret.encrypt(3)).to eq "4228317416831222334726421756"
    end
    it 'returns 4632721820127162673811308251160 when given 7' do
      secret = Secret2.new('My name is Edward!')
      expect(secret.encrypt(7)).to eq "4632721820127162673811308251160"
    end
  end

  describe 'String#encrypt' do
    it 'returns 4228317416831222334726421756 when given "My name is Edward!", 3' do
      expect("My name is Edward!".encrypt(3)).to eq "4228317416831222334726421756"
    end
  end
end

RSpec.describe Secret3 do
  describe '#encrypt' do
    it 'returns 43 when given "0", 45' do
      expect(Secret3.new('0').encrypt(45)).to eq 43
    end
    it 'returns 37141410981421041798190704170452 when given "Look over there!", 2374' do
      expect(Secret3.new('Look over there!').encrypt(2374)).to eq 37141410981421041798190704170452
    end
    it 'returns 37141410981421041798190704170452 when given "Look over there!", 2473' do
      expect(Secret3.new('Look over there!').encrypt(2473)).to eq 37141410981421041798190704170452
    end
    it 'returns 37141410981421041798190704170452 when given "Look over there!", 2572' do
      expect(Secret3.new('Look over there!').encrypt(2572)).to eq 37141410981421041798190704170452
    end
    it 'returns 4239464649850896030864646461 when given "HELLO, 28 $$$!", 7' do
      expect(Secret3.new('HELLO, 28 $$$!').encrypt(7)).to eq 4239464649850896030864646461
    end
    it 'returns 21212121212121 when given "       ", 20' do
      expect(Secret3.new('       ').encrypt(20)).to eq 21212121212121
    end
    it 'returns 181918444544485965465649446165596449444745584446494464625347556922444563444745584446494420444645475563564563524963 when given "a nightmare of escape characters", 43' do
      expect(Secret3.new("'\"' a double quote can be tricky, as can be \\ backslashes").encrypt(43)).to eq 181918444544485965465649446165596449444745584446494464625347556922444563444745584446494420444645475563564563524963
    end
  end
end
