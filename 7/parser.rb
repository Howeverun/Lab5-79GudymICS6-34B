# frozen_string_literal: true

# parser.rb

load 'main.rb'
f_file = File.new('F.txt', 'w+')
f_file.syswrite('1 2 3 5 4 6 7 10 9 8 17 2 3 4 5')
f_file.close

# g_file = File.new('G.txt', 'w+')
# g_file.syswrite(solve_f.to_s)
# g_file.close
solve_g(solve_f)
# File.delete('F.txt', 'G.txt')
