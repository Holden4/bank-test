require 'transaction_log'

describe TransactionLog do

  let(:transaction) {double :transaction}
  let(:transaction_class) {double(:transaction_class, new: transaction)}
  subject(:transaction_log) {described_class.new(transaction_class)}

  context '#deposit' do
    it 'creates a credit transaction and adds it to the array' do
      transaction_log.deposit(100,300)
      expect(transaction_log.history).to include(transaction)
    end
  end

   context '#withdrawal' do
     it 'Creates debit transaction to give to array' do
       transaction_log.deposit(1000, 1200)
       expect(transaction_log.history).to include(transaction)
     end
   end

   context '#history' do
     it 'Returns a copy of any transactions stored in the array' do
       transaction_log.deposit(200, 400)
       expect(transaction_log.history).to eq [transaction]
     end
   end

end
