class Calculator
  def initialize(calculate_sum: Sum.new, calculate_subtraction: Subtraction.new, calculate_multiplication: Multiplication.new, calculate_division: Division.new)
    @calculate_sum = calculate_sum
    @calculate_subtraction = calculate_subtraction
    @calculate_multiplication = calculate_multiplication
    @calculate_division = calculate_division
  end

  def sum(number_1, number_2)
    @calculate_sum.sum(number_1, number_2)
  end

  def subtraction(number_1, number_2)
    @calculate_subtraction.subtraction(number_1, number_2)
  end

  def multiplication(number_1, number_2)
    @calculate_multiplication.multiplication(number_1, number_2)
  end

  def division(number_1, number_2)
    @calculate_division.division(number_1, number_2)
  end

  def calculate(operator, number_1, number_2)
    case operator
    when '+'
      sum(number_1, number_2)
    when '-'
      subtraction(number_1, number_2)
    when '*'
      multiplication(number_1, number_2)
    when '/'
      division(number_1, number_2)
    else
      'O operador digitado é inválido.'
    end
  end
end

class Sum
  def sum(number_1, number_2)
    number_1 + number_2
  end
end

class Subtraction
  def subtraction(number_1, number_2)
    number_1 - number_2
  end
end

class Multiplication
  def multiplication(number_1, number_2)
    number_1 * number_2
  end
end

class Division
  def division(number_1, number_2)
    return number_1 / number_2 if number_2 > 0
    'Não é possível fazer divisão por zero.'
  end
end
