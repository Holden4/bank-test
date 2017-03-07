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
    @transaction_log.deposit(amount, @balance)
  end

  def withdrawal(amount)
    @balance -= amount
    @transaction_log.withdrawal(amount, @balance)
  end

  def current_balance
    "Your available balance is £#{@balance}"
  end
end
