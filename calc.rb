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

# run the calculator

greeting

number_1 = input_number_1

operation = input_operation

number_2 = input_number_2

puts number_1.to_s + operation.to_s + number_2.to_s
