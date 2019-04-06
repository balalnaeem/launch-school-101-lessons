def greetings arr, hash
  name = arr.join(' ')
  title = hash[:title]
  occupation = hash[:occupation]
  "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })