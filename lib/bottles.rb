class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, finish)
    start.downto(finish).map { |number| verse(number) }.join("\n")
  end

  def verse(number)
    if number.zero?
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      bottles = bottles(number)
      remaining_bottles = bottles(number.pred)
      unit = remaining_unit(number)

      "#{bottles} of beer on the wall, #{bottles} of beer.\nTake #{unit} down and pass it around, #{remaining_bottles} of beer on the wall.\n"
    end
  end

  private

  def remaining_unit(number)
    if number.pred.zero?
      'it'
    else
      'one'
    end
  end

  def bottles(number)
    case number
    when 0
      'no more bottles'
    when 1
      "#{number} bottle"
    else
      "#{number} bottles"
    end
  end
end
