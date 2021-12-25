# frozen_string_literal: true

load 'main2.rb'

a = Sickman.new('Gudym', 19)
puts '___ Class tree ___'
puts Sickman.ancestors
puts '^^^ End of class tree ^^^'
puts 'Second name of Sickboy:'
puts a.last_name
puts 'Age of Sickboy:'
puts a.age
puts ' '

b = Sickboy.new('Anashkina', 19)
puts '___ Class tree ___'
puts Sickboy.ancestors
puts '^^^ End of class tree ^^^'
puts 'Second name of Sickguy:'
puts b.last_name
puts 'Age of Sickguy:'
puts b.age
puts 'Year of last clinical examination'
puts b.last_year
