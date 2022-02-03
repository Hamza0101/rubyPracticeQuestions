# frozen_string_literal: true

class RunningSum # rubocop:disable Style/Documentation
  def get_array(array)
    i = 0
    while i < array.length
      print('   ', array[i])
      i += 1
    end
    print("\n")
  end

  def set_array(array, size = 10)
    i = 0
    while i < size
      print('Enter ', i, 'th element of array:')
      array[i] = gets
      array[i] = array[i].to_i
      i += 1
    end

    puts
  end

  def running_sum(array)
    i = 0

    while i < array.length

      break if i + 1 == array.length

      array[i + 1] = array[i] + array[i + 1]
      i += 1
    end
  end
end

def main
  array = [1, 2, 3, 4, 5]
  obj = RunningSum.new
  puts array
  # obj.get_array(array)

  obj.running_sum(array)
  print('Running Sum:')
  obj.get_array(array)
end

def generic
  print('Input number of elements in array :')
  size = gets
  size = size.to_i
  array1 = []
  obj.set_array(array1, size)
  obj.running_sum(array1)
  print('Running Sum:')
  obj.get_array(array1)
end

main
generic
