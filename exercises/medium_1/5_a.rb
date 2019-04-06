def print_line(spaces, grid_size)
  line = (spaces == 0 ? "*" : "*" + " " * spaces + "*")
  puts line.center(grid_size)
end

def diamond(grid_size)
  mid_line = grid_size / 2
  0.upto(mid_line) do |spaces|
    if spaces < 1
      print_line(spaces, grid_size)
    else
      print_line((spaces * 2) -1, grid_size)
    end
  end

  (mid_line - 1).downto(0) do |spaces|
    if spaces < 1
      print_line(spaces, grid_size)
    else
      print_line((spaces * 2) -1, grid_size)
    end
  end
end

diamond(11)