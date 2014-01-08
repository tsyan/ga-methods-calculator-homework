# whoo

def greeting
	puts "Greetings! I am your calculator. I can do operations on integers."
end

def input_number_1
	puts "what is your first number?"
	return gets.chomp.to_i
end

def input_operation
	puts "what operation would you like to do? choices: + - * / ^exp ^2 ^3 ^exp sqrt"
	return gets.chomp.to_s
end

def input_number_2
	puts "what is your second number?"
	return gets.chomp.to_i
end

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

def calc_two_numbers(operation, number_1, number_2)
	case operation
		when "+"
			number_1.to_i + number_2.to_i
		when "-"
			number_1.to_i - number_2.to_i
		when "*"
			number_1.to_i * number_2.to_i
		when "/"
			number_1.to_f / number_2.to_f
		when "^exp"
			number_1.to_i ** number_2.to_i
		else
			"I have no idea what's going on."
	end
end

def calc_one_number(operation, number_1)
	case operation
		when "^2"
			number_1.to_i * number_1.to_i
		when "^3"
			number_1.to_i * number_1.to_i * number_1.to_i
		when "sqrt"
			number_1.to_i ** 0.5
		else
			"I have no idea what's going on."
	end
end

def print_two_numbers_result(number_1, operation, number_2, result)
	puts "Here is your result:"
	puts number_1.to_s + operation.to_s + number_2.to_s + " = " + result.to_s
end

def print_one_number_result(operation, number_1, result)
	puts "Here is your result:"
	puts number_1.to_s + operation.to_s + " = " + result.to_s
end

# run the calculator

greeting

number_1 = input_number_1

operation = input_operation

puts "The operation is #{operation}."

mode = one_number_or_two_numbers(operation)

puts "The mode is #{mode}."

case mode
	when "two_numbers"
		number_2 = input_number_2
		result = calc_two_numbers(operation, number_1, number_2)
		print_two_numbers_result(number_1, operation, number_2, result)
	when "one_number"
		result = calc_one_number(operation, number_1)
		print_one_number_result(operation, number_1, result)
	else
		puts "I have no idea what's going on."
end









