require 'dice'

RSpec.describe Dice do

  describe "#roll" do
    it 'rolls a dice' do
      expect(subject.roll).to be_between(1,6).inclusive
    end
    it 'rolls multiple dice' do
      expect(subject.roll(5)).to be_between(5,30).inclusive
    end
    it 'rolls multiple dice and returns each roll' do
      rolls = [*1..50]
      dice = Dice.new
      rolls.each do |x|
        i = 0
        while i < x do
          expect(dice.roll(x,"array")[i]).to be_between(1,6).inclusive
          i += 1
        end
      end
    end
  end

end
