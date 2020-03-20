#Account with basic information
class Account
  #Only reading the data; name & balance
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name  
    @balance = balance
  end
  
  #Information that can be publicly seen by anyone who can see the code
  public 
  def display_balance(pin_number)
    #If the pin is correct, it will state the balance. If the pin is an error, it will state the error.
    puts pin_number == pin ? "Balance: $#{@balance}.":pin_error
end
  
  #The information needed in order to withdraw money from the account
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      #States here that the procedure to withdraw money is only valid if the pin is correct
    puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      #If not, an error message will appear
    puts "pin_error"
    end
  end
  
  #Procedure to deposit money if the pin is correct.
  def deposit(pin_number, amount)
    if pin_number == pin
      @balance += amount
      puts "Deposit #{amount}. New balance: $#{@balance}."
    else
      puts "pin_error"
    end
  end
 
  #This is the private section because it contains sensitive information and cannot be public knowledge due to security reasons
  private
  def pin
    @pin = 1234
  end

  def pin_error
   return "Access denied: incorrect PIN."
  end
end

#This section states the account information, the balance in each account
checking_account = Account.new("Celine", 1_000)
savings_account = Account.new("Celine", 2_000)
