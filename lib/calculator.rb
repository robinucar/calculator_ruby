class Calculator
  def add(num1, num2)
    num1 + num2
  end

  def subtract(num1, num2)
    (num1) - (num2)
  end

  def multiple(num1, num2)
    num1 * num2
  end

  def divide(num1, num2)
    result = num1 / num2
    result.infinite? ? 0 : result
  end
  def print_answer(answer)
    "The Answer is: #{answer}"
  end
end