def toggle_lights num
  lights = []
  1.upto(num) { |i| lights << [i, 'on'] }
  pattern = 2
  loop do
    lights.each do |sub_arr|
      if sub_arr.first.modulo(pattern).zero?
        sub_arr[1] = (sub_arr.last == 'on' ? 'off' : 'on')
      end
    end
    pattern += 1
    break if pattern >= lights.size + 2
  end
  lights.map { |a,b| a if b == 'on' }.compact
end

p toggle_lights(1000)