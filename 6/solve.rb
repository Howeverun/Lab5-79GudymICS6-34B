# frozen_string_literal: true

def solve(xx0, xx1, epss, lambda = nil, &block)
  block = lambda unless lambda.nil?
  while xx1 - xx0 > epss
    x = (xx0 + xx1) / 2
    if (block.call(x) * block.call(xx0)).positive?
      xx0 = x
    else
      xx1 = x
    end
  end
  x
end

def solve_yield(xx0, xx1, epss)
  while xx1 - xx0 > epss
    x = (xx0 + xx1) / 2
    if (yield(x) * yield(xx0)).positive?
      xx0 = x
    else
      xx1 = x
    end
  end
  x
end
