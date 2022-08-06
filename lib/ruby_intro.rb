# When done, submit this entire file to the autograder.

# Part 1

def sum arr

  arr.sum

end

def max_2_sum arr

  arr.max(2).sum

end

def sum_to_n? arr, n
  
  len_arr = arr.length()

  if len_arr < 2 
    return false
  else
    arr.find {|e| 
      if arr.include?(n-e) 
        return false if (arr.count(e) < 2) && (e == n-e)
        return true
      elsif arr.find_index(e) == len_arr-1
        return false
      end  
    }
  end

end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end

end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /^(?:[10]*00|00?)$/.match(s) != nil
    return true
  else 
    return false 
  end
end


# Part 3
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError
    else 
      @isbn = isbn 
    end
    
    if price > 0
      @price = Float(price)
    else 
      raise ArgumentError
    end
  end

  def price_as_string
    "$#{'%.2f' % @price}"
  end

end
