# frozen_string_literal: true

def calc_f(xxx, zzz)
  Math.sin(35.5 * (zzz / (xxx - 5))) + xxx * xxx / (2 * (Math::E**xxx))
end

def return_arr_words_i(arr, iii)
  arr[iii]
end

def print_words(arr_words, arr_ints, iii = 0, sss = '')
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

def print_words_two(arr_words, arr_ints, iii = 0, sss = '')
  # use .zip here
  a = arr_words.zip(arr_ints) # massiv of massives [['mama', '2'], ['mila', '2'], ['ramu', '3']]
  i = 0
  str = ''
  while i < a.length
    str += (a[i][0][0..a[i][1].to_i - 1]).to_s + ' '.to_s
    i += 1
  end
  puts str
end
