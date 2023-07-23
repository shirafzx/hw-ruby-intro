# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each do |i|
    result += i
  end
  result
end

def max_2_sum arr
  result = 0
  if arr.empty?
    result
  elsif arr.length == 1
    result = arr[0]
  else
    sorted_arr = arr.sort.reverse
    result = sorted_arr[0] + sorted_arr[1]
  end
end

def sum_to_n? arr, n
  return false if arr.empty? || arr.length == 1
  arr.each_with_index do |num1, index1|
    arr.each_with_index do |num2, index2|
      next if index1 == index2
      return true if num1 + num2 == n
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.nil? || s.empty?
  first_char = s[0].downcase
  return first_char.match?(/[a-z]/) && !first_char.match?(/[aeiou]/)
end

def binary_multiple_of_4? s
  return false if s.nil? || s.empty?

  return false unless s.match?(/^[01]+$/)

  num = s.to_i(2)
  return num % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, "ISBN cannot be an empty string" if isbn.empty?
    raise ArgumentError, "Price should be greater than zero" if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
