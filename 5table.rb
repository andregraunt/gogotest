def table_of_multiplication(n)
  (1..n).each do |i|
    (1..n).each do |j|
      # print "#{i * j}"
      print "#{i * j} \t"

    end
    puts
    puts
  end
end

puts
table_of_multiplication(10)
