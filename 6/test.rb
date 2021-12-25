# frozen_string_literal: true

load './solve.rb'
require 'minitest/autorun'
load './calculation.rb'
# mini_tests.rb
# 0.429798
class Test1 < MiniTest::Unit::TestCase
  def test_one
    eps = 0.1
    res = 0.5016244010359817
    assert_equal(res, integrate(0, 1, eps))
  end

  def test_two
    eps = 0.01
    res = 0.42980181415397956
    assert_equal(res, integrate(0, 1, eps))
  end

  def test_three
    eps = 0.001
    res = 0.42979841833327725
    assert_equal(res, integrate(0, 1, eps))
  end

  def test_four
    eps = 0.0001
    res = 0.4298690959371796
    assert_equal(res, integrate(0, 1, eps))
  end

  def test_five
    eps = 0.00001
    res = 0.42980545511232005
    assert_equal(res, integrate(0, 1, eps))
  end
end
