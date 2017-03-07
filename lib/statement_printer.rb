class StatementPrinter

  def initialize
  end

  def print_statement(transaction_log)
    puts add_header
  end



  private

  def add_header
    "date || credit || debit || balance\n"
  end

end
