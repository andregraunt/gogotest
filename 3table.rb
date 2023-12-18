def table_of_multiplication(n)
  for i in 1..n
    for j in 1..n
      puts "#{i} * #{j} = #{i * j}"
    end
  end
end

table_of_multiplication(10)
