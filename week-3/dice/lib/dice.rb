class Dice
  def roll(number_of_dice=1, format="total")
    rolls = []
    number_of_dice.times do
      rolls << rand(1..6)
    end
    if format == "total"
      rolls.inject(0, :+)
    elsif format == "array"
      rolls
    end
  end
end
