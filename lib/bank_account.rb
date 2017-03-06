class BankAccount
  attr_reader :balance

  EMPTY_ACCOUNT = 0

  def initialize(starting_balance = EMPTY_ACCOUNT)
    @balance = starting_balance
  end

end
