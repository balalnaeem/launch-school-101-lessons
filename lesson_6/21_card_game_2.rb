require 'pry'
SUITS = %w(Hearts Diamonds Clubs Spades)
RANKS = %w(A 2 3 4 5 6 7 8 9 10 J Q K)

def initialize_deck(suits, ranks)
  suits.product(ranks)
end

def deal_cards!(deck, hand)
  2.times do
    pair = deck.sample
    deck.delete(pair)
    hand << pair
  end
end

def show_player_cards(hand)
  cards = []
  hand.each { |arr| cards << arr.last }

  if cards.size == 2
    cards.join(' and ')
  else
    cards[-1] = "and #{cards.last}"
    cards.join(', ')
  end
end

def show_computer_cards(hand)
  card = hand.last.last
  "#{card} and Unknown"
end

def total(hand)
  values = hand.map { |card| card.last }

  sum = 0
  values.each do |val|
    if val == "A"
      sum += 11
    elsif val.to_i == 0
      sum += 10
    else
      sum += val.to_i
    end
  end

  values.select { |val| val == "A" }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def hit(deck, hand)
  pair = deck.sample
  deck.delete(pair)
  hand << pair
end

def busted?(hand)
  total(hand) > 21
end

def who_won(player, computer)
  if total(player) > total(computer)
    "Player won!"
  elsif total(computer) > total(player)
    "Dealer won!"
  else
    "Its a tie!"
  end
end

deck = initialize_deck(SUITS, RANKS)

player_hand = []
computer_hand = []

deal_cards!(deck, player_hand)
deal_cards!(deck, computer_hand)

puts "You have: #{show_player_cards(player_hand)}"
puts "Dealer has: #{show_computer_cards(computer_hand)}"

answer = nil
loop do
  puts "hit or stay?"
  answer = gets.chomp.downcase
  if answer == 'hit'
    hit(deck, player_hand)
  elsif answer == "stay"
    puts "You chose to stay."
    break
  end

  if busted?(player_hand)
    puts "You got busted. Dealer won!"
    break
  end

  puts "You have: #{show_player_cards(player_hand)}"
  puts "Dealer has: #{show_computer_cards(computer_hand)}"
end

loop do
  break if busted?(player_hand)

  if total(computer_hand) < 17
    hit(deck, computer_hand)
  else
    puts "Dealer chose to stay"
    puts who_won(player_hand, computer_hand)
    break
  end

  if busted?(computer_hand)
    puts "Dealer got busted. You won!"
    break
  end

end


















