def factorial(n)
  result = 1
  n.downto(1) do |x|
    result *= x

  end
  return result
end

# Пример использования
puts 'what number?'
number = gets.to_i
result = factorial(number)
puts "Факториал числа #{number} равен #{result}."
