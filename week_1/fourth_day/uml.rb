UML = <<TEXT
 ________________________________
|                                |
|          BankAccount           |
|--------------------------------|
| owner   : String               |
| balance : Dollars = 0          |
|--------------------------------|
| deposit( amount : Dollars )    |
| withdrawal( amount : Dollars ) |
|________________________________|
TEXT

class BankAccount
  attr_accessor :owner, :balance

  def initialize(owner, balance = 0)
    @owner   = owner
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawal(amount)
    @balance -= amount
  end
end

my_account = BankAccount.new('Justin Herrick')
my_account.deposit(10000)
my_account.withdrawal(25)
my_account.owner
my_account.balance
