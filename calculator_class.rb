class Calculator

  @@true_username = "tamerm"
  @@true_password = "tamerm123"
  @@true_authenticationCode = "0000"

  def initialize(entered_username,entered_password)
    @username = entered_username
    @password = entered_password
    if entered_username == @@true_username && entered_password == @@true_password
      puts "Enter your authentication code"
      entered_authenticationCode = gets.chomp
      if entered_authenticationCode == @@true_authenticationCode
        run_calculator
      else
        puts "Authentication code is wrong"
      end
    else
      puts "Entered username or password is wrong"
    end
  end

  def run_calculator
    puts "\nWelcome to your new calculator app.
          \nLets calculate!
          \nWhich operation would you like to do?
          \n1 >> Plus \t 2 >> Minus \t 3 >> Multiply \t 4 >> Divide \n\n"
    operation_choice
  end

  def operation_choice
    print "Your choice: "
    operation = gets.chomp
    if operation=="1" or operation=="2" or operation=="3" or operation=="4"
      print "\nEnter first number: "; @first = gets.chomp.to_i
      print "Enter second number: "; @second = gets.chomp.to_i
      puts "Result: #{operation_result(operation)}"      
    else
      puts "Wrong choice"
      operation_choice 
    end
  end

  def operation_result(operation_type)
    case operation_type
      when "1"
        plus @first,@second
      when "2"
        minus @first,@second
      when "3" 
        multiply @first,@second
      when "4"
        divide @first,@second
      else
        "Wrong choice"
    end
  end

  def plus(first,second)
    return first+second
  end

  def minus(first,second)
    return first-second
  end

  def multiply(first,second)
    return first*second
  end

  def divide(first,second)
    return first/second
  end

end

puts "Please enter your username"
entered_username = gets.chomp
puts "Enter your password"
entered_password = gets.chomp

calc = Calculator.new entered_username,entered_password
