class RunningSum
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
    def runningSum(array) 
        i=0
		while(i<array.length)

            if(i+1==array.length)
                break
            end
            array[i+1]=array[i]+array[i+1]
            i+=1
        end
	end

end






def main()
    array=[1, 2, 3, 4, 5]
    obj=RunningSum.new()
    
    obj.getArray(array)
    
    obj.runningSum(array)
    print("Running Sum:")
    obj.getArray(array)


    print("Input number of elements in array :")
    size=0
    size=gets
    size=size.to_i
    array1=Array.new
    obj.setArray(array1,size)
    obj.runningSum(array1)
    print("Running Sum:")
    obj.getArray(array1)


end
main()