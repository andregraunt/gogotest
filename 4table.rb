def table_of_multiplication(n)
  return (1..n).map { |i| (1..n).map { |j| i * j } }
end

table = table_of_multiplication(10)
