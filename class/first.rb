class BankAccount
  def initialize()
    # constructor
    #
  end

  def interest_rate # A class variable is a variable shared between all instances of a class.
    @@interest_rate = 0.2
  end

  def accountNumber # getter
    @accountNumber = "12345" # Instance variables
  end
  def accountNumber=( value ) # setter
    @accountNumber = value
  end

  def accountName
    @accountName = "John Smith"
  end
  def accountName=( value ) # setter
    @accountName = value
  end

  def test_method
    puts "The Class is working"
    puts accountName
  end

  def calc_interest ( balance )
    puts balance * interest_rate
  end
end

account = BankAccount.new()
# account.test_method
puts account.accountName
puts account.accountNumber

account.accountName="Ryota"
puts account.accountName # don't change...

account.calc_interest(5000) # 1000