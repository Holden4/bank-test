require 'transaction'

class TransactionLog

  def initialize(transaction_class = Transaction)
    @transaction_class = transaction_class
    @transactions = []
  end

  def history
    @transactions.dup
  end

  def deposit(amount, new_balance)
    @transactions << create_transaction(amount, new_balance, :credit)
  end


private

  def create_transaction(amount, new_balance, type)
    @transaction_class.new(amount, new_balance, type)
  end


end
