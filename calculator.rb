
class String
  # This monkey patch method checks if a string is a number
  def is_number
    self.to_s.each_char do |i|
      return false if !(i =~ /[0-9]/ || i == '.')
    end
  end
end

def say(input)
  puts "==> #{input}"
end


loop do
  # Beginning of main loop.
  
  num1, num2 = 0

  say "Welcome to Jason's Calculator"
  say "Please enter first number:"
  
  loop do
    num1 = gets.chomp!
    if num1.is_number != false
      break
    else
      say "Invalid number. Please try again:"
    end
  end

  say "Please enter second number:"

  loop do
    num2 = gets.chomp!
    if num2.is_number != false
      break
    else
      say "Invalid number. Please try again:"
    end
  end

  say "Please select from the following operations:"
  say "1. Add"
  say "2. Subtract"
  say "3. Multiply"
  say "4. Divide" 

  loop do
    # Math operations loop
    choice = gets.chomp
    case choice
    when "1"
      say "#{num1} plus #{num2} equals #{num1.to_f + num2.to_f}"
      break
    when "2"
      say "#{num1} minus #{num2} equals #{num1.to_f - num2.to_f}"
      break
    when "3"
      say "#{num1} multiplied by #{num2} equals #{num1.to_f * num2.to_f}"
      break
    when "4"
      say "#{num1} divided by #{num2} equals #{num1.to_f / num2.to_f}"
      break
    else
      say "Invalid operation. Please try again."
    end
  end
  
  say ""
  say "Enter 'Y' if you would like to perform another operation. Press any other key to exit."
  break if gets.chomp != 'Y'

end




