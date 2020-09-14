def question(player)
  num1 = rand(1..100)
  num2 = rand(1..100)
  @result = num1 + num2

  puts "#{player}: what is the result of #{num1} + #{num2}?"
end