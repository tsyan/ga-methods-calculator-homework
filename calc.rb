# whoo

def greeting
	puts "Greetings! I am your calculator. I can do operations on two numbers."
end

def input_number_1
	puts "what is your first number?"
	return gets.chomp.to_i
end

def input_operation
	puts "what operation would you like to do? choices: + - * /"
	return gets.chomp.to_s
end

def input_number_2
	puts "what is your second number?"
	return gets.chomp.to_i
end

def do_arithmetic(operation, number_1, number_2)
	case operation
		when "+"
			number_1.to_i + number_2.to_i
		when "-"
			number_1.to_i - number_2.to_i
		when "*"
			number_1.to_i * number_2.to_i
		when "/"
			number_1.to_i / number_2.to_i
		else
			"I have no idea what's going on."
	end
end


# run the calculator

greeting

number_1 = input_number_1

operation = input_operation

number_2 = input_number_2

result = do_arithmetic(operation, number_1, number_2)

puts "Here is your result:"
puts number_1.to_s + operation.to_s + number_2.to_s + " = " + result.to_s

# puts number_1.to_s + operation.to_s + number_2.to_s + "=" + number_1.to_i + number_2.to_i








