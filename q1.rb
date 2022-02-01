class Tally
    def getArray(array) 
		i = 0
		while (i < array.length) 
			print("   ", array[i])
			i += 1
		end
		print("\n")
	end
    def setArray(array,size) 
		i = 0
		while (i < size) 
            print("Enter ",i,"th element of array:" )
			array[i]=gets
            array[i]=array[i].to_i
			i += 1
		end
		print("\n")
	end
    def frequency(array) 
		#  Create a empty map
		map = Hash.new()
		i = 0
		while (i < array.length) 
			if (map.key?(array[i])) 
				map[array[i]] = map[array[i]] + 1
			else
 
				#  Add new element
				map[array[i]] = 1
			end

			i += 1
		end

		print("  frequency", "\n")
		map.each { | key, value | 
          print("  ", key ,"  =>  ", value,",")
		}
	end

end






def main()
    array = [1, 2, 3, 4, 1, 1, 1, 2, 3, 11, 11, 2, 33]
    obj=Tally.new()
    obj.getArray(array)
    obj.frequency(array)



    print("Input number of elements in array :")
    size=0
    size=gets
    size=size.to_i
    array1=Array.new
    obj.setArray(array1,size)
    obj.frequency(array1)


end
main()