require 'checkout'
require 'item'

RSpec.describe Checkout do

  describe '#scan' do
    it 'returns "Item scanned" when scanned' do
      item = Item.new(2)
      expect(subject.scan(item)).to eq "Item scanned!"
    end
  end

  describe '#total' do
    it 'returns the total of all scanned items' do
      banana = Item.new(2)
      apple = Item.new(1.5)
      pear = Item.new(2)
      subject.scan(banana)
      subject.scan(apple)
      subject.scan(pear)
      expect(subject.total).to eq "£5.50"
    end
  end

end

RSpec.describe Item do

  describe '.price' do
    it 'returns the price of the item' do
      item = Item.new(2)
      expect(item.formatted_price).to eq "£2.00"
    end
  end
  describe '#formatted_price' do
    it 'returns the formatted price of the item with 3sf' do
      item = Item.new(2.56)
      expect(item.formatted_price).to eq "£2.56"
    end
    it 'returns the formatted price of the item with 2sf' do
      item = Item.new(2.4)
      expect(item.formatted_price).to eq "£2.40"
    end
    it 'returns the formatted price of the item with 1sf' do
      item = Item.new(2)
      expect(item.formatted_price).to eq "£2.00"
    end
  end

end
