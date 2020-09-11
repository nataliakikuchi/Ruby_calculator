class Calculator
  def initialize(overrides = {})
    @sum = overrides.fetch(:sum) { Sum.new }
    @subtraction = overrides.fetch(:subtraction) { Subtraction.new }
    @multiplication = overrides.fetch(:multiplication) { Multiplication.new }
    @division = overrides.fetch(:division) { Division.new }
  end

  def sum(number_1, number_2)
    @sum.calculate(number_1, number_2)
  end

  def subtraction(number_1, number_2)
    @subtraction.calculate(number_1, number_2)
  end

  def multiplication(number_1, number_2)
    @multiplication.calculate(number_1, number_2)
  end

  def division(number_1, number_2)
    @division.calculate(number_1, number_2)
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
  def calculate(number_1, number_2)
    number_1 + number_2
  end
end

class Subtraction
  def calculate(number_1, number_2)
    number_1 - number_2
  end
end

class Multiplication
  def calculate(number_1, number_2)
    number_1 * number_2
  end
end

class Division
  def calculate(number_1, number_2)
    return number_1 / number_2 if number_2 > 0
    'Não é possível fazer divisão por zero.'
  end
end
