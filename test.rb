# puts "hello world"

# Create the following functions:
# ○ Adds five to argument given
# ○ Multiplies argument given by 15
# ○ Performs a mathematical operation using four integer and/or float arguments
# ○ Prints the argument given four times
# ○ Prints an uppercase version of the argument given

def addsFive(n)
	n + 5
end

q1 = addsFive(5)
puts q1


def timesFifteen(n)
	n * 15
end

q2 = timesFifteen(2)
puts q2

def fourParams(a,b,c,d)
	(a + b) - (c * d)
end

q3 = fourParams(1,2,3,4)
puts q3

def putsFour(n)
	puts n
	puts n
	puts n
	puts n
end

putsFour("Kevin")

def putsUpper(n)
	n.upcase
end

q5 = putsUpper("kevin")
puts q5

def onlyInAmerica(string = "Where?")
	puts "#{string} Only in America!"
end



# Create the following functions:
# a. Create a function that takes a string and adds the phrase “Only in America!” to
# the end of it
# b. Create a function to find the maximum value in an array of numbers. For instance:
# [100,10,­1000]
# should return 100. Do not use Ruby’s built­in .max function.
# c. Create a function that takes two arguments ­ both of them arrays. Inside of the function, combine the arrays using the items from the first array as keys and the second array as values. For example, when these two arrays are supplied as arguments:
# [:toyota, :tesla] [“Prius”, “Model S”]
# they should return a hash like so: {toyota: “Prius”, tesla: “Model S”}
# Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for multiples of five print “Buzz”. Print “FizzBuzz” for numbers that are multiples of both 3 and 5.



q6 = onlyInAmerica("Where can I get McDonalds 24-7?")
puts q6

my_array2 = [10,100,-1000, 101, 99]

def findMax(my_array)
	max_len = (my_array.length-1)
	mxm = my_array[0]
		for i in 0..max_len
				if my_array[i] > mxm
				mxm = my_array[i]
				end
		end
	mxm
end

# Zachs solution
def find_max(some_array)
	max_num = some_array[0]
	some_array.each do |number|
		if number > max_num
			max_num = number
		end
	end
	max_num
end




q7 = findMax(my_array2)
puts q7

array3 = [:toyota, :tesla]
array4 = ["Prius", "Model S"]

def zipArrays(array1, array2)
	hash = {}
	array1.zip(array2) { |a,b| hash[a] = b }
	hash
end

q8 = zipArrays(array3,array4)
puts q8


# How do you iterate over an array?
# 	each.do
# use external counter to tell what iteration in the loop

#Zachs Solution
def buildHash(keys,values)
	crazy = {}
	counter = 0
	keys.each do |key|
		crazy[key] = values[counter]
		counter += 1
	end
	crazy
end



def fizzBuzz(range = 100)
	for i in 1..range
		if i % 5 == 0 && i % 3 == 0
			puts "FizzBuzz"
		elsif i % 5 == 0 
			puts "Buzz"
		elsif
			i % 3 == 0
			puts "Fizz"
		else
			puts i
		end
	end
end

fizzBuzz()

