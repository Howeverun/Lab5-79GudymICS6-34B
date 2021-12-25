# frozen_string_literal: true

def open_f
  File.open('F.txt', 'r')
  arr1 = IO.readlines('F.txt')
  str1 = ''
  (0..arr1.length - 1).each do |i|
    str1 += arr1[i].to_s
  end
  str1.split(' ')
end

def open_g
  File.open('G.txt', 'r')
  arr1 = IO.readlines('G.txt')
  str1 = ''
  (0..arr1.length - 1).each do |i|
    str1 += arr1[i].to_s
  end
  str1
end

def next_five_arr(arr, xx1, arr1 = [])
  xx2 = xx1 + 5
  while xx1 < xx2
    arr1.push(arr[xx1].to_i)
    xx1 += 1
  end
  z = arr1.max(1)
  z = z.to_s + ' '.to_s if xx1 < arr.length
  z
end

def solve_f
  arr1 = open_f
  i = 0
  answer = ''
  while i < arr1.length
    answer += next_five_arr(arr1, i).to_s
    i += 5
  end
  answer
end

def solve_g(str1)
  g_file = File.new('G.txt', 'w+')
  (0..str1.length).each do |i|
    g_file.syswrite(str1[i].to_s) if str1[i].to_s != '[' && str1[i].to_s != ']'
  end
  g_file.close
end

def solve(strr)
  f_file = File.new('F.txt', 'w+')
  f_file.syswrite(strr)
  f_file.close
  solve_g(solve_f)
  open_g
end
