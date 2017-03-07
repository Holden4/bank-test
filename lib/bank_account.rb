require_relative "transaction_log"

class BankAccount
  attr_reader :balance

  OPENING_BALANCE = 0

  def initialize(starting_balance: OPENING_BALANCE, transaction_log: TransactionLog.new)
    @transaction_log = transaction_log
    @balance = starting_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawal(amount)
    @balance -= amount
  end

end
