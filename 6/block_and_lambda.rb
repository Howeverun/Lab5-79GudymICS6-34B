# frozen_string_literal: true

load 'solve.rb'

puts 'Решение при помощи yield:'
puts solve_yield(0.0, 2.0, 0.001) { |x| x * x + Math.sin(x / 2) }
puts 'Решение при помощи блока:'
puts solve(0.0, 2.0, 0.001) { |x| x * x + Math.sin(x / 2) }
puts 'Решение при помощи lambda, функция с предыдущими не совпадает, из-за чего отличный от прошлых ответ:'
puts solve(0.0, 2.0, 0.01, ->(x) { Math.atan(x) + x - 1 })
