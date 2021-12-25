# frozen_string_literal: true

load './main.rb'
require 'minitest/autorun'


def open_g
  File.open('G.txt', 'r') if File.exist?('G.txt')
  arr1 = IO.readlines('G.txt')
  str1 = ''
  (0..arr1.length - 1).each do |i|
    str1 += arr1[i].to_s
  end
  str1
end

def new_file_f(str1)
  f_file = File.new('F.txt', 'w+')
  f_file.syswrite(str1)
  f_file.close
end



# Test1.rb
class Test1 < MiniTest::Unit::TestCase
  def assert_with_g(res)
    assert_equal(res, open_g)
  end

  def test_one
    new_file_f ('1 2 3 5 4 6 7 10 9 8 17 2 3 4 5')
    solve_g(solve_f)
    assert_with_g('5 10 17')
  end

  def test_two
    new_file_f ('809 4444 44 22 4')
    solve_g(solve_f)
    assert_with_g('4444')
  end

  def test_three
    new_file_f ('-23 3 4 4 55 9 8 7 6 5 33 44 55 22 34')
    solve_g(solve_f)
    assert_with_g('55 9 55')
  end

  def test_four
    new_file_f ('-11 -2 -44 -3 -1')
    solve_g(solve_f)
    assert_with_g('-1')
  end

  def teardown
    File.delete('F.txt') if File.exist?('F.txt')
    File.delete('G.txt') if File.exist?('G.txt')
  end
end
