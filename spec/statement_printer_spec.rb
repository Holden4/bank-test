require 'statement_printer'

describe StatementPrinter do
  before do
    @t = Time.local(2017, 3, 1, 12, 0, 0)
    Timecop.freeze(@t)
  end


  subject(:statement_printer) {described_class.new}
  let(:transaction1) {double(:transaction1, amount: 800, type: :credit, date: @time, balance: 1000)}
  let(:transaction2) {double(:transaction2, amount: 300, type: :debit, date: @time, balance: 700)}
  let(:transaction_log) {double(:transaction_log, get_transactions: [transaction1, transaction2])}



  context '#print_statement' do
    it 'Prints out statement with header' do
      result = "date || credit || debit || balance\n"
      expect(STDOUT).to receive(:puts).with(result)
      statement_printer.print_statement(transaction_log)
    end
  end
end
