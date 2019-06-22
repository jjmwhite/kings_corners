class Card
  SUIT_STRINGS = {
    clubs: '♣',
    diamonds: '♦',
    hearts: '♥',
    spades: '♠'
  }

  VALUE_STRINGS = {
    deuce: '2',
    three: '3',
    four: '4',
    five: '5',
    six: '6',
    seven: '7',
    eight: '8',
    nine: '9',
    ten: '10',
    jack: 'J',
    queen: 'Q',
    king: 'K',
    ace: 'A'
  }

  # make an array of the suits that can be called on Card
  def self.suits
    SUIT_STRINGS.keys
  end

  # make an array of the values that can be called on Card
  def self.values
    VALUE_STRINGS.keys
  end

  attr_reader :suit, :value
  #initialize method
  def initialize(suit, value)
    if Card.suits.include?(suit) && Card.values.include?(value)
      @suit = suit
      @value = value
    else
      raise "invalid suit and/or value"
    end
  end

  def color
    :diamonds || :hearts ? :red : :black
  end

  def step_down
    case card.value
    when :king
      return :queen
    when :queen
      return :jack
    when :jack
      return :ten
    when :ten
      return :nine
    when :nine
      return :eight
    when :eight
      return :seven
    when :seven
      return :six
    when :six
      return :five
    when :five
      return :four
    when :four
      return :three
    when :three
      return :two
    when :two
      return :ace
    end
  end

  def ==(other_card)
    return false if other_card.nil?

    return true if self.value == other_card.value
    false 
  end

  def to_s
    VALUE_STRINGS[key] + SUIT_STRINGS[key]
  end

end