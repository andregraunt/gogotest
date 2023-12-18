
puts 'enter for game'
gets
puts 'kama paam you want game?'
n = gets.to_i
puts 'your number?'
num = gets.to_i

1.upto(n) do |w|
  puts "#{w} paam"
  x = rand(1..50)

  if num == x
      puts 'you are Win !'
      break


  # else num != x
  else
    puts 'You are LUZER'
  end

end
