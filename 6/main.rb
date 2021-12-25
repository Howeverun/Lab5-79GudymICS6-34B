# frozen_string_literal: true

load './calculation.rb'
load './enum_integral.rb'

# puts("Enter x0, x1 and EPS:")
# mas_of_ints = gets.split.map(&:to_i)
# x0 = mas_of_ints[0]
# x1 = mas_of_ints[1]
# epss = mas_of_ints[2]
x0 = 0
x1 = 1
puts('Integral with rectangle method:')
puts(integrate(x0, x1, 0.1))
puts(integrate(x0, x1, 0.01))
puts(integrate(x0, x1, 0.001))
puts(integrate(x0, x1, 0.0001))
puts(integrate(x0, x1, 0.00001))
puts('Integral with rectangle method with Enum and EPS == 0.0001:')
puts(find_integral(x0, x1, 0.0001))
puts('Integral with rectangle method with Enum and EPS == 0.000001:')
puts(find_integral(x0, x1, 0.00001))
