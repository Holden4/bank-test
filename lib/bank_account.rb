require 'transaction_log'

class BankAccount
  attr_reader :balance

  EMPTY_ACCOUNT = 0

  def initialize(starting_balance: EMPTY_ACCOUNT, transaction_log: TransactionLog.new)
    @transaction_log = transaction_log
    @balance = starting_balance
  end

  def deposit(amount)
    new_balance = @balance + amount
    @balance = new_balance
  end

  def withdrawal(amount)
    new_balance = @balance - amount
    @balance = new_balance
  end

end
