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
  # Check if the string is empty or nil
  return false if s.nil? || s.empty?

  # Convert the first character of the string to lowercase for easier comparison
  first_char = s[0].downcase

  # Check if the first character is a letter (consonant) and not a vowel
  return first_char.match?(/[a-z]/) && !first_char.match?(/[aeiou]/)
end

def binary_multiple_of_4? s
  # Check if the string is empty or nil
  return false if s.nil? || s.empty?

  # Check if the string contains only '0' and '1' characters
  return false unless s.match?(/^[01]+$/)

  # Convert the binary string to an integer and check if it is divisible by 4
  num = s.to_i(2)
  return num % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    # Check for valid ISBN
    raise ArgumentError, "ISBN cannot be an empty string" if isbn.empty?

    # Check for valid price
    raise ArgumentError, "Price should be greater than zero" if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
