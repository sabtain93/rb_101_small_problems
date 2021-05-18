# Input: Array of unordered elements:
  # exactly one value occurs twice
  # all other elements are unique
# Return: The value that is duplicated within the array


# Initialize an `element` variable to nil
# Initialize a counter to 0
# Loop
  # Assign the value at index counter in the array to `element`
  # Iterate through the array, for each element
    # Select any elements that are equal to the current element
  # Break if the returned selection array is greater than 1
  # Increment counter
# Return element

def find_dup(array)
  element = nil
  counter = 0
  duplicates = []

  loop do
    element = array[counter]
    duplicates = array.select { |value| value == element }
    break if duplicates.size > 1
    counter += 1
  end

  element
end

puts find_dup([1, 5, 3, 1]) == 1
puts find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

=begin
Option 2:
# Problem:
- Input: an unordered array
  - One value in the array occurs twice
  - All other values occur exactly once
  - In this case the values are numbers
- Output: the value that occurs twice in the input array

# Algorithm:
- Sort the input array
- Once sorted, iterate over the elements with index
  - If the current element is equal to the next element
  - Return the current element
=end

def find_dup(array)
  array.sort!.each_with_index do |ele, idx|
    return ele if ele == array[idx + 1]
  end  
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
