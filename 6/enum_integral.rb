# frozen_string_literal: true

def foo(xxx)
  xxx / Math.sqrt(1 + xxx**3)
end

def find_integral(xx0, xx1, epss)
  fib = Enumerator.new do |yielder|
    x = xx0
    sum = 0
    loop do
      yielder << sum
      sum += foo(x) * epss
      x += epss
    end
  end
  fib.first((xx1 * 1 / epss).to_i).last
end
