

class Player

  attr_reader :name, :chip_count, :cards

  def initialize(name, chip_count)
    @name = name
    @chip_count = chip_count
    @cards = []
  end

  def clear_cards!
    @cards = []
  end

end
