require 'item'
require 'helper'

class Checkout
  def initialize
    @scanned_items = []
  end

  def scan(item)
    @scanned_items << item
    "Item scanned!"
  end

  def total
    total_price = 0
    @scanned_items.each do |x|
      total_price += x.price
    end
    num_to_currency(total_price)
  end
end
