# frozen_string_literal: true

# Class tally
class Tally
  def get_array(array)
    # i = 0
    # while i < array.length
    #   print('   ', array[i])
    #   i += 1
    # end

    # print("\n")

    array.each { |i| puts i }
  end

  def set_array(array, size)
    i = 0
    while i < size
      print('Enter ', i, 'th element of array:')
      array[i] = gets
      array[i] = array[i].to_i
      i += 1
    end
    print("\n")
  end

  def frequency(array) # rubocop:disable Metrics/MethodLength
    #  Create a empty map
    map = {}
    array.each { |element| map[array[element]] = map.key?(array[element]) ? map[array[element]] + 1 : 1 }
    puts 'Frequency: ' + map
    puts "Frequency: #{map}"
  end
end

def main # rubocop:disable Metrics/MethodLength
  array = [1, 2, 3, 4, 1, 1, 1, 2, 3, 11, 11, 2, 33]
  obj = Tally.new
  obj.getArray(array)
  obj.frequency(array)

  print('Input number of elements in array :')
  size = gets
  size = size.to_i
  array1 = []
  obj.setArray(array1, size)
  obj.frequency(array1)
end
main
