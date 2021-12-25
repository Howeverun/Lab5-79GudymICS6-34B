# frozen_string_literal: true

load 'main2.rb'
require 'minitest/autorun'

# mini_tests.rb

# Test1
class Test1 < MiniTest::Unit::TestCase
  def test_one
    a = Sickman.new('Gudym', 19)
    assert_equal('Gudym', a.last_name)
  end

  def test_two
    a = Sickboy.new('Gudym', 19)
    assert_equal(19, a.age)
  end

  def test_three
    a = Sickboy.new('Gudym', 19)
    assert_equal(18, a.last_year)
  end

  def test_four
    a = Sickboy.new('Gudym', 19)
    a.last_name = 'Anashkin'
    assert_equal('Anashkin', a.last_name)
  end

  def test_five
    assert(Sickboy < Sickman)
  end
end
