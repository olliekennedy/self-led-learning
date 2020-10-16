require 'helper'

class Item
  attr_reader :price
  def initialize(price)
    @price = price
  end

  def formatted_price
    num_to_currency(@price)
  end
end
