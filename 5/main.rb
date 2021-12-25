# frozen_string_literal: true

load 'funcmodule.rb'

puts('Enter x & z:')
mas_of_ints = gets.split.map(&:to_i)
x = mas_of_ints[0]
z = mas_of_ints[1]
puts(calc_f(x, z))

puts('Enter your string of words:')
words = gets.chomp
mas_of_words = words.split(' ')

# мама мыла раму
# 2 2 3
# ма мы рам
puts('Enter your string of ints:')
mas_of_ints = gets.split.map(&:to_i)

puts '   {}{}{}{}{}{}}   '
puts( (mas_of_words, mas_of_ints))
puts '   ||||||||||   '
puts(print_words_two(mas_of_words, mas_of_ints))
