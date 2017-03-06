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

    it "raises error if amount is not an Fixnum" do
    expect {transaction_log.deposit("300", 200)}.to raise_error(RuntimeError)
    end

    it "raises error if amount < 1" do
      expect {transaction_log.deposit(0, 200)}.to raise_error(RuntimeError)
    end
  end

   context '#withdrawal' do
     it 'Creates debit transaction to give to array' do
       transaction_log.withdrawal(1000, 1200)
       expect(transaction_log.history).to include(transaction)
     end

     it "raises error if amount is not an Fixnum" do
      expect {transaction_log.withdrawal("300", 200)}.to raise_error(RuntimeError)
    end

    it "raises error if amount < 1" do
      expect {transaction_log.withdrawal(0, 200)}.to raise_error(RuntimeError)
    end

    it "raises error if the new_balance < 0" do
      expect {transaction_log.withdrawal(300, -200)}.to raise_error(RuntimeError)
    end
  end

   context '#history' do
     it 'Returns a copy of any transactions stored in the array' do
       transaction_log.deposit(200, 400)
       expect(transaction_log.history).to eq [transaction]
     end
   end

end
