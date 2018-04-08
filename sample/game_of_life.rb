
# Conway's Game of Life
# http://www.conwaylife.com/wiki/Conway%27s_Game_of_Life
width = height = 10
birth = [3]
death = [0,1,4,5,6,7,8]

# Glider
# http://www.conwaylife.com/wiki/Glider
grid = [
# 2 3 4 5 6 7 8 9 10
0,0,0,0,0,0,0,0,0,0, # 1
0,1,1,1,0,0,0,0,0,0, # 2
0,1,0,0,0,0,0,0,0,0, # 3
0,0,1,0,0,0,0,0,0,0, # 4
0,0,0,0,0,0,0,0,0,0, # 5
0,0,0,0,0,0,0,0,0,0, # 6
0,0,0,0,0,0,0,0,0,0, # 7
0,0,0,0,0,0,1,1,1,0, # 8
0,0,0,0,0,0,1,0,0,0, # 9
0,0,0,0,0,0,0,1,0,0, # 10
]

history = 7.times.map{|i|
  grid = CellularAutomaton.step(grid,width,birth,death,true)
}
height.times do |y|
  history.each{|grid|
    print grid[y*width,width].map{|c|c.to_i==0?".":"#"}.join+"|"
  }
  puts ""
end
