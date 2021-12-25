# frozen_string_literal: true

require 'minitest/autorun'
load 'funcmodule.rb'

def actual_f(xxx, zzz)
  Math.sin(35.5 * (zzz / (xxx - 5))) + xxx * xxx / (2 * (Math::E**xxx))
end

def return_arr_words_i(arr, iii)
  arr[iii]
end

def actual_print_words(arr_words, arr_ints, iii = 0, sss = '')
  while iii < arr_ints.length && iii < arr_words.length
    curr = 0
    while curr < arr_ints[iii].to_i && curr < arr_words[iii].length
      sss += return_arr_words_i(arr_words, iii)[curr]
      curr += 1
    end
    sss += ' '.to_s
    iii += 1
  end
  sss
end

# TestRobot
class TestRobot < Minitest::Test
  def test_calc_f
    (6..100).each do |x|
      (0..100).each do |z|
        assert_equal actual_f(x, z), calc_f(x, z)
      end
    end
  end

  def test_decrypt_str
    abc = 'абвгдеёжзийклмнопрстуфхцчшщъыьэюя '.split('')
    test_sstr = []
    test_int = []
    i = rand(2..20)
    while i.positive?
      test_sstr.push(abc[rand(0..abc.length - 1)])
      i -= 1
    end
    test_int[0] = rand(0..20)
    assert_equal actual_print_words(test_sstr.join(''), test_int), print_words(test_sstr.join(''), test_int)
  end
end
