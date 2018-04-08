
w = 39
h = 23
birth = [5,6,7,8]
death = [1,2,3]
total_step = 10

srand(Time.now.to_i) # same source, same result.
grid = source = (w*h).times.map{ rand(100)<50?0:1 }

total_step.times{|i|
  grid = CellularAutomaton.step grid,w,birth,death,true
}

h.times{|y|
  print source[y*w,w].map{|c| c.to_i==0 ? "." : "#" }.join + "|"
  print grid[y*w,w].map{|c| c.to_i==0 ? "." : "#" }.join + "\n"
}
