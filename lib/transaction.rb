class Transaction

  def initialize(amount, balance, type)
      @amount = amount
      @type = type
      @balance = balance
      @date = Time.new
    end
end
