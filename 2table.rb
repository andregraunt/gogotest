def table_of_multiplication(n)
  (1..n).each do |i|
    (1..n).each do |j|
      puts "#{i} * #{j} = #{i * j}"
    end
  end
end

table_of_multiplication(10)
