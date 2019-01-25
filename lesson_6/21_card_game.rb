require 'pry'

SUITS = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
RANKS = ['A', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']

# initialize deck
def initalize_deck(suits, ranks)
  suits.product(ranks)
end

def deal_cards!(deck, user)
  2.times { user << deck.sample }
end

#calculate_total
def total(cards)
  sum = 0

  values = cards.map { |card| card.last }

  values.each do |val|
    if val == 'A'
      sum += 11
    elsif val.to_i == 0
        sum += 10
      else
        sum += val.to_i
    end
  end

  values.select { |val| val == 'A' }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def show_player_cards(hand)
  cards = []
  hand.each do |arr|
    cards << arr.last
  end
  if cards.size == 2
    cards.join(' and ')
  else
    cards[-1] = " and #{cards.last}"
    cards.join(', ')
  end
end

def show_dealer_cards(hand)
  cards = []
  hand.each do |arr|
    cards << arr.last
  end
  cards[-1] = " Unknown"
  if cards.size == 2
    cards.join(' and ')
  else
    cards[-1] = " and #{cards.last}"
    cards.join(', ')
  end
end

def hit(user, deck)
  user << deck.sample
end

deck = initalize_deck(SUITS, RANKS)
player = []
dealer = []

deal_cards!(deck, player)
deal_cards!(deck, dealer)

puts show_player_cards(player)
puts show_dealer_cards(dealer)

hit(player, deck)

puts show_player_cards(player)
puts show_dealer_cards(dealer)

puts total(player)









