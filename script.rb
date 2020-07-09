require './calculator'

puts "Digite um número: "
number_1 = gets.to_f
puts "Digite o operador do cálculo que deseja realizar: "
operator = gets.chomp
puts "Digite outro número: "
number_2 = gets.to_f

calculadora = Calculator.new

result = calculadora.calculate(operator, number_1, number_2)
puts result