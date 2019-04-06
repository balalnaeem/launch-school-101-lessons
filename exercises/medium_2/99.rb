def all_balanced?(string)
  balanced?(string, '(', ')') &&
    balanced?(string, '"', '"') &&
    balanced?(string, "'", "'") &&
    balanced?(string, '[', ']')
end

def balanced?(string, opener = '(', closer = ')')
  return string.count(opener).even? if opener == closer

  counter = 0
  string.chars.each do |c|
    case c
    when opener then counter += 1
    when closer then counter -= 1
    end

    break if counter < 0
  end

  counter.zero?
end

p balanced?("What's (((is))) up()")