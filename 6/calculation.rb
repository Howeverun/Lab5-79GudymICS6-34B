# frozen_string_literal: true

def foo(xxx)
  xxx / Math.sqrt((1 + (xxx**3)))
end

def integrate(xx0, xx1, dxx = 0.0001, sum = 0)
  loop do
    sum += dxx * foo(xx0 + 0.5 * dxx)
    xx0 += dxx
    break if xx0 > xx1
  end
  sum
end
