# whoo

# initial message
def greeting
	puts "Greetings! I am your calculator. I can do operations on integers."
end

# user inputs first number
def input_number_1
	puts "what is your first number?"
	return gets.chomp.to_i
end

# user inputs operation
def input_operation
	puts "what operation would you like to do? choices: + - * / ^2 ^3 ^exp sqrt"
	return gets.chomp.to_s
end

# user inputs second number
def input_number_2
	puts "what is your second number?"
	return gets.chomp.to_i
end

# this method determines whether the input should be one number or two numbers
# the variable 'mode' is only defined inside the method, but is referenced later as the output of this method
def one_number_or_two_numbers(operation)
	case operation
		when "+"
			mode = "two_numbers"
		when "-"
			mode = "two_numbers"
		when "*"
			mode = "two_numbers"
		when "/"
			mode = "two_numbers"
		when "^exp"
			mode = "two_numbers"
		when "^2"
			mode = "one_number"
		when "^3"
			mode = "one_number"
		when "sqrt"
			mode = "one_number"
		else
			mode = "invalid"
	end
	return mode
end

# performs the calculation for a two-number function
def calc_two_numbers(operation, number_1, number_2)
	case operation
		when "+"
			number_1 + number_2
		when "-"
			number_1 - number_2
		when "*"
			number_1 * number_2
		when "/"
			number_1.to_f / number_2.to_f
		when "^exp"
			number_1 ** number_2
		else
			"I have no idea what's going on."
	end
end

# performs the calculation for a one-number function
def calc_one_number(operation, number_1)
	case operation
		when "^2"
			number_1 * number_1
		when "^3"
			number_1 * number_1 * number_1
		when "sqrt"
			number_1 ** 0.5
		else
			"I have no idea what's going on."
	end
end

# prints the result of a two-number calculation
def print_two_numbers_result(number_1, operation, number_2, result)
	puts "Here is your result:"
	puts number_1.to_s + operation.to_s + number_2.to_s + " = " + result.to_s
end

# prints the result of a one-number calculation
def print_one_number_result(operation, number_1, result)
	puts "Here is your result:"
	puts number_1.to_s + operation.to_s + " = " + result.to_s
end

# run the calculator

# initial message
greeting

# assigns the user's first number input to the variable 'number_1'
number_1 = input_number_1

# assigns the user's chosen operation to the variable 'operation'
operation = input_operation

# debug mode
# puts "The operation is #{operation}."

# determines whether the calculation will involve one number or two numbers
# this line isn't using the same 'mode' as within the 'one_number_or_two_numbers' method; that 'mode' is dead
# this line assigns a completely new variable 'mode' to the returned value of 'one_number_or_two_numbers'
mode = one_number_or_two_numbers(operation)

# debug mode
# puts "The mode is #{mode}."

case mode
	when "two_numbers"
		# assigns the user's second number input to the variable 'number_2'
		number_2 = input_number_2
		# performs the calculation and assigns the result to the variable 'result'
		result = calc_two_numbers(operation, number_1, number_2)
		# prints the result
		print_two_numbers_result(number_1, operation, number_2, result)
	when "one_number"
		# performs the calculation and assigns the result to the variable 'result'
		result = calc_one_number(operation, number_1)
		# prints the result
		print_one_number_result(operation, number_1, result)
	else
		puts "I have no idea what's going on."
end









